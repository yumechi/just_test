fn sum_numbers(numbers: &[i32]) -> i32 {
    numbers.iter().sum()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_sum_numbers() {
        assert_eq!(sum_numbers(&[1, 2, 3, 4, 5]), 15);
        assert_eq!(sum_numbers(&[]), 0);
        assert_eq!(sum_numbers(&[-1, 1]), 0);
        assert_eq!(sum_numbers(&[10, 20, 30]), 60);
    }
}