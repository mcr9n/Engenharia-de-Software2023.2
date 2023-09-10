#Reading introducion to Ruby Programming
#Interpreted language
#Object Oriented
# - Everything is an object
# - Every operation is method call on some object
#Dynamically typed: objects have types, variables do not
#Dynamic
# -add, modify code at runtime(metaprogramming)
# -ask objects about themselves(reflection)
# -in a sense all programming is metaprogramming
#Constants (scoped) => TEST_MODE = true; $GLOBALS (not scoped) => $TEST_MODE = true
#symbols: like immutable string whose value is itself
#favorite_framework = :rails
#:rails.to_s() == "rails"
#"rails".to_sym() == :rails
#:rails == "rails" => false
#There are no declarations
# - local variables must be assigned before use
# - instance & class are nil by default
# X = 3 => OK ; Integer x = 3 => ERROR
# Hash: w = {'a' => 1, :b => [2,3]}
# w[:b][0] == 2
#w.keys() == ['a', :b]
#Methods:
#Everything (except fixnums) is pass-by-reference
#Isso significa que quando você passa um argumento para um método, o que
#é passado é uma cópia da referência para o objeto, não o objeto em si.
#Se você alterar o objeto dentro do método, a alteração será refletida
#no objeto original.
#Last exp is returned by default as result of method
#
#Match a string against a regular expression
#"fox@berkeley.EDU" =~  /(.*)@(.*)\.edu$/i
# - If no match, value is false
# - If match, value is non-false, and $1...$n capture parenthesized
#  substrings($1 == "fox", $2 == "berkeley")
# We could rewrite all the methods as calls to send:
# my_str.length => my_str.send(:length)
# my_str[0] => my_str.send(:[], 0)
# if(x == 3) => if(x.send(:==, 3))
# my_func(x, y) => self.send(:my_func, x, y)
#Sometimes implicit conversion on comparison is not in the type system,
#but in the instance methods
# << destructively modifies its receiver
# destructive methods often have names ending in !
#  Hashes & Poetry Mode
#  omitting parens around function args may happen
#  poetry mode: omit parens around function args => it's so scary
#  @ => is used for instance var, that's visible only inside the method
#  that is using it
#  @@ => class static variable
#  def self.bank_name
#  @@bank_name
#  end
#  note the difference in method def used for a class method
#  Instance variables: shortcut => attr_accessor is just a plain
#  old method that uses metaprogramming...not part of the language
#  Ruby's Distinguishing Features
#  Object-oriented with no multiple-inheritance
#  - everything is an object, even simple things like integers
#  - class, instance variables invisible outside class
# Everything is a method call
#  - usually, only care if receiver responds to method
#  - most operators are methods
#  - Dynamically typed: Objects have types, variables don't
# Destructive methods
#  - usually have names ending in !
# Idiomatically, use ? for methods that return boolean
#  - {} and () sometimes optional
#  Metaprogramming & Reflection
#  - Reflection lets us ask an object questions about itself
#  and have it modify itself.
#  - Metaprogramming lets us define new code at runtime
#
#How can these make our code dryer, more concise, or easier to read?
#The power of method missing
#You can ask Ruby objects questions about themselves at runtime (introspection)
#You can use this information to generate new code(methods, objects, classes)
#at runtime (reflection)
#so can have code that writes code(metaprogramming)
#You can reopen any class at any time and add stuff to it
#...in addition to extending/subclassing it
#suppose we want to handle 5.euros.in(:rupees)
#Object-oriented with no multiple-inheritance
#
