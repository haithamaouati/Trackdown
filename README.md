# Trackdown
Trackdown an IP address geolocation — fast, accurate, and reliable.

```
  _____                         _          _                            
 |_   _|  _ __    __ _    ___  | | __   __| |   ___   __      __  _ __  
   | |   | '__|  / _` |  / __| | |/ /  / _` |  / _ \  \ \ /\ / / | '_ \ 
   | |   | |    | (_| | | (__  |   <  | (_| | | (_) |  \ V  V /  | | | |
   |_|   |_|     \__,_|  \___| |_|\_\  \__,_|  \___/    \_/\_/   |_| |_|
```

## Usage

To use the Trackdown script, follow these steps:

1. Clone the repository:

    ```
    git clone https://github.com/haithamaouati/Trackdown.git
    ```

2. Change to the Trackdown directory:

    ```
    cd Trackdown
    ```
    
3. Change the file modes
    ```
    chmod +x trackdown.sh
    ```
    
5. Run the script:

    ```
    ./trackdown.sh
    ```

6. Trackdown an IP address geolocation:

   ```
   ./trackdown.sh -i <IP_ADDRESS>
   ```
   ###### Help
   ```
   ./trackdown.sh -h
   ```

## Dependencies

The script requires the following dependencies:

- [figlet](): Program for making large letters out of ordinary text
- [curl](https://curl.se/): Command line tool for transferring data with URL syntax
- [jq](https://stedolan.github.io/jq/): Command-line JSON processor

Make sure to install these dependencies before running the script.

## Author

Made with :coffee: by **Haitham Aouati**
  - GitHub: [github.com/haithamaouati](https://github.com/haithamaouati)

## License

Trackdown is licensed under [Unlicense license](LICENSE).
