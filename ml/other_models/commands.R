library(tidyverse)
library(parallel)
library(caret)
library(cohen.kappa)

fp0 <- read_csv("../train36_predict13/fp0/set_bits.csv") %>% mutate_if(is.character, as.logical)
fp1 <- read_csv("../train36_predict13/fp1/set_bits.csv") %>% mutate_if(is.character, as.logical)
fp2 <- read_csv("../train36_predict13/fp2/set_bits.csv") %>% mutate_if(is.character, as.logical)
fp3 <- read_csv("../train36_predict13/fp3/set_bits.csv") %>% mutate_if(is.character, as.logical)

read_csv("../train36_predict13/fp0/set_bits_test.csv") %>% mutate_all(as.logical)-> sb_test_fp0
read_csv("../train36_predict13/fp1/set_bits_test.csv") %>% mutate_all(as.logical)-> sb_test_fp1
read_csv("../train36_predict13/fp2/set_bits_test.csv") %>% mutate_all(as.logical)-> sb_test_fp2
read_csv("../train36_predict13/fp3/set_bits_test.csv") %>% mutate_all(as.logical)-> sb_test_fp3

read_csv("../train36_predict13/fp0/test.csv") %>% select(-fingerprint) -> test

test_model <- function(fp, sb, method = "regLogistic") {
  mclapply(seq(0.1, 0.9, 0.1), mc.cores = 9, function(X) {
    
    train(factor(yield) ~ .,
          data = fp %>% mutate(yield = yield > X),
          trControl = tc,
          method = method
    ) -> model
    
    pred = predict(model, sb, type = "prob")[,2]
    pred_self = mean(predict(model, fp) == (fp$yield > X))
    
    tibble(method = method, cutoff = X, kappa = model$results$Kappa %>% max(),
      c01 = pred[01], c02 = pred[02], c03 = pred[03], c04 = pred[04], c05 = pred[05],
      c06 = pred[06], c07 = pred[07], c08 = pred[08], c09 = pred[09], c10 = pred[10],
      c11 = pred[11], c12 = pred[12], c13 = pred[13], 
      self_score = pred_self
    )
  }) %>% bind_rows()
}

test_all_fp_models <- function(method = "regLogistic") {
  set.seed(12345)
  
  print("FP0")
  fp0_res = test_model(fp0, sb_test_fp0, method) %>% mutate(fp = "fp0")
  
  print("FP1")
  fp1_res = test_model(fp1, sb_test_fp1, method) %>% mutate(fp = "fp1")
  
  print("FP2")
  fp2_res = test_model(fp2, sb_test_fp2, method) %>% mutate(fp = "fp2")
  
  print("FP3")
  fp3_res = test_model(fp3, sb_test_fp3, method) %>% mutate(fp = "fp3")
  
  bind_rows(fp0_res, fp1_res, fp2_res, fp3_res)
}

reglog = test_all_fp_models()
knn <- test_all_fp_models("knn")
glm <- test_all_fp_models("glm")
pls <- test_all_fp_models("pls")

fp0 %>%
  ggplot(aes(yield)) +
  geom_histogram(binwidth = 0.11) +
  geom_histogram(binwidth = .01, fill = "blue") +
  scale_x_continuous(breaks = c(0.0,0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0)) +
  scale_y_continuous(breaks = seq(1,17), expand = c(0,0)) +
  geom_vline(xintercept = 0.7) +
  geom_vline(xintercept = 0.4)

process_dt_data <- function(input) {
  read_csv(input) -> dt_res
  
  dt_res %>%
    select(-kappa, -self_score) %>%
    gather(compound, prob, -cutoff) %>%
    spread(cutoff, prob) ->
    dt_res
  
  dt_res %>% 
    summarize_if(is.numeric, funs(cohen.kappa(data.frame(test$yield == 1.0, . > 0.5))$kappa ) ) %>%
    mutate(compound = "kappa") %>%
    rbind(dt_res)
}

process_caret_data <- function(input) {
  input %>%
    select(-kappa, -self_score, -method) %>%
    gather(compound, prob, -cutoff, -fp) %>%
    spread(cutoff, prob) ->
    input_res

  input_res %>%
    group_by(fp) %>%
    summarise_if(is.numeric, funs(cohen.kappa(data.frame(test$yield == 1.0, . > 0.5))$kappa )) %>%
    mutate(compound = "kappa") %>%
    rbind(input_res) %>%
    arrange(fp, compound)
}

reglog %>% process_caret_data() %>% write_csv("reglog.csv")
glm %>% process_caret_data() %>% write_csv("glm.csv")
knn %>% process_caret_data() %>% write_csv("knn.csv")
pls %>% process_caret_data() %>% write_csv("pls.csv")

bind_rows(
  process_dt_data("../train36_predict13/fp0/results.csv") %>% mutate(fp = "fp0"),
  process_dt_data("../train36_predict13/fp1/results.csv") %>% mutate(fp = "fp1"),
  process_dt_data("../train36_predict13/fp2/results.csv") %>% mutate(fp = "fp2"),
  process_dt_data("../train36_predict13/fp3/results.csv") %>% mutate(fp = "fp3"),
) %>% arrange(fp, compound) %>% write_csv("dt.csv")

cohen.kappa(data.frame(test$yield == 1.0, test$proton_affinity < -214.42))$kappa
