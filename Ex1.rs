use regex::Regex;

fn find_substrings(s: &str) -> Vec<String> {
    let re = Regex::new(r"10+1").unwrap();
    re.find_iter(s).map(|mat| mat.as_str().to_string()).collect()
}

fn main() {
    let str = "101tf11flb10001";
    let result = find_substrings(&str);
    for substring in result {
        println!("{}", substring);
    }
}
