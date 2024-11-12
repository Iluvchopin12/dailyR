#Nov. 11th

# 카이제곱 값과 자유도 설정
chi_square_value <- 10
dof <- 5

# p-값 계산
p_value <- pchisq(chi_square_value, dof, lower.tail = FALSE)

# p-값 출력
p_value


# 자동 변속기 자동차 데이터
mean_auto <- 16.12
sd_auto <- 3.58
n_auto <- 26

# 수동 변속기 자동차 데이터
mean_manual <- 19.85
sd_manual <- 4.51
n_manual <- 26


# 정규 분포를 이용해 데이터 생성
data_auto <- rnorm(n_auto, mean_auto, sd_auto)
data_manual <- rnorm(n_manual, mean_manual, sd_manual)


# t-검정 실행
test_result <- t.test(data_auto, data_manual, var.equal = TRUE)
print(test_result)



# 기본 데이터 설정
n_CA <- 11545    # 캘리포니아 주민 수
n_IL <- 4691     # 일리노이 주민 수
p_CA <- 0.08     # 캘리포니아에서 수면 부족을 보고한 비율
p_IL <- 0.088    # 일리노이에서 수면 부족을 보고한 비율

# 수면 부족을 보고한 사람들의 수
x_CA <- n_CA * p_CA
x_IL <- n_IL * p_IL


# 두 비율의 z-검정 수행
test_result <- prop.test(x = c(x_CA, x_IL), n = c(n_CA, n_IL), correct = FALSE)

# 검정 결과 출력
print(test_result)



# Calculate the p-value for the two-tailed t-test
p_value_one_tail <- pt(-2.6189, df = 25)  # p-value for one tail

p_value_one_tail

p_value_two_tail <- 2 * p_value_one_tail  # Double it for two tails

# Print the p-value with four decimal places
print(format(p_value_two_tail, digits = 6))


(124.32 - 35) / (37.74/ sqrt(52))

p_value <- 1 - pt(17.08, df = 51)
p_value
