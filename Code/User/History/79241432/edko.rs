use std::io; 

fn main(){
    println!("Guess the number!");

    println!("Please input your guess.");


    let mut guess = String::new();

    io::stdin()
    .readline(&mut guess)
    .expect("Failed to read line");

    println!("YOu guessed: {}". guess);
}