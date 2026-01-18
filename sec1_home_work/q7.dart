/*Given this code, identify any errors and explain why they occur: ```dart void main()
{ String name = "Alice"; name = 123; print(name); } ```*/
void main()
{ 
 String name = "Alice";
 name = 123; // Error occurs because name is a String and it cannot take an integer value
 print(name);
  }