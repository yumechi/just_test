fn main() {
    println!("Hello, Just!");
    
    let numbers = vec![1, 2, 3, 4, 5];
    let sum: i32 = numbers.iter().sum();
    
    println!("Numbers: {:?}", numbers);
    println!("Sum: {}", sum);
}