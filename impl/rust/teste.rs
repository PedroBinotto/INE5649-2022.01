fn main() {
    let mut x: u32 = 0;
    while x < std::u32::MAX {
        x += 1;
    }
    println!("Finished!");
    println!("'x' is {}", x);
}
