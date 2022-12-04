# CrackStation (V2.0.1)

Crackstation is a password decrypt library that uses sha1 and sha256 decoding without salted. 

## Overview

Hashing is a one-way process that converts a password to ciphertext using hash algorithms. A hashed password cannot be decrypted, but a hacker can try to reverse engineer it. Password salting adds random characters before or after a password prior to hashing to obfuscate the actual password.

Crack Station should be able to crack any password that is up to three characters in length. This library can be used as a decryption setting for client to server communication. Both the client and the server can verify that the entered hash corresponds to the current password by accessing the file where the encrypted data is stored. The purpose is to be used to set up automatic password recognition. This library can also be used as a way to verify that the hash value of the current character corresponds.

## Mission Statement

It is able to crack passwords that satisfy this range [a-zA-Z0-9?!] of single characters and are encrypted using SHA-1. It can also crack any password that is up to two characters long and satisfies any two characters in the range [a-zA-Z0-9?!] and is encrypted using SHA-1. It now can crack any password that is up to three characters. Currently this cracking station is only able to complete cracking without salt. The purpose of this Crackstation is to understand the workflow of encryption and decryption of cracking stations. The working principle is in the swift file named Crackstation.

## Installation

### Swift package Manager

The Swift Package Manager is "a tool for managing the distribution of Swift code. It's integrated with Swift build system to automate the process of downloading, compiling, and linking dependencies."

Once you have your Swift package set up, add CrackStation to the list of dependencies in your file:

<pre><code>dependencies: [
    .package(url: "git@github.com:gn1m1ew/CrackStation.git", .upToNextMajor(from : "2.0.1" ))
]</code></pre>

### Usage

### The API
<details>
<summary>CrackStation</summary><blockquote>
<pre><code>
public protocol Decrypter {
    init()

    /// Either returns the cracked plain-text password
    /// or, if unable to crack, then returns nil.
    /// - Parameter shaHash: The SHA-1 or SHA-256 digest that corresponds to the encrypted password.
    /// - Returns: The underlying plain-text password if `shaHash` was successfully cracked. Otherwise returns nil.
    func decrypt(shaHash: String) -> String?
}
</code></pre>
  
</details>

### An example

Step 1: Import the CrackStation
<pre><code>import CrackStation</code></pre>

Step 2: Initialize CrackStation object 
<pre><code>testObject = CrackStation()</code></pre>

Step 3: Start Cracking process 
Provide a SHA-1 digest into the function and see if it spit out a plain-text password. If the CrackStation couldn't find a matching password, it will return nil.
<pre><code>
hash1 = "df211ccdd94a63e0bcb9e6ae427a249484a49d60"
testObject.decrypt(shaHash: hash1)
decrypt result: "as"
</code></pre>

<pre><code>
hash1 = "df211ccdd94a63e0bcb9e6ae427a249484a49d20"
testObject.decrypt(shaHash: hash1)
decrypt result: "asA"
</code></pre>

## Author
Ming Wei
## Release tag
2.0.3
