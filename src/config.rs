fn main() {
    #[cfg(debug_assertions)]
    println!("Debug mode: Verbose logging enabled");
    
    #[cfg(not(debug_assertions))]
    println!("Release mode: Optimized build");
    
    let version = "1.0.0";
    println!("Version: {}", version);
}