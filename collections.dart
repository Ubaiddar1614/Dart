void main()
{
/*  var scores=[20,40,60,80,100,97,46,33];
  List<String> names=["Ubaid","Dar","Ruhi"];
  print(scores[0]);
  scores.add(100);
  print(scores[4]);
 Set <String> name={"Ali","Mishal","Rizwana"};
 print(name);
 for(int score in scores)
 {
  if(score > 50){
print("The score  is $score");
 }
 else
 {
  print("score is not high enough $score");
 }
 }
 for(int score in scores.where((s)=>s>50))
 {
 print("The score is $score");
 }
Map<int,String> planets = {
  1:"Mercury",
  2:"Venus",
  3:"Earth",
  4:"Mars",
  5:"Jupiter"
}; 
planets[6]="Uranus";
print(planets);
print(planets.containsKey(3));
*/
List<String> fruits=["Apple","Orange","Mango"];
fruits.add("banana");
fruits.add("peach");
fruits.add("grapes");
// print(fruits);
fruits.remove("grapes");
fruits.sort();
print("Sorted list $fruits");
for(String fruit in fruits)
{
  print(fruit);
}
print("Length of list is ${fruits.length}");

Set <int> setA ={1,1,2,3,4,5}; //set ignores duplicates diff between set and list
print("original set $setA");
setA.add(3);
setA.remove(2);
print(setA);
for(int nums in setA )
{
  print(nums);
}
Set <int> setB={1,3,5,7,9};
Set <int> intersectionSet =setA.intersection(setB);
print("Intersection of set A & B is : $intersectionSet");

Set<int> unionSet = setA.union(setB);
print("Union of A & B: $unionSet");

Set<int> differenceSet = setA.difference(setB);
print("Difference (A - B): $differenceSet");

print("Does set A contain 4? ${setA.contains(4)}");

//Converting list into set to remove duplicates
List<int> A=[1,2,2,3,3,4];
Set<int> B= A.toSet();
print(B);
Map<String,dynamic> userInfo ={
"Name": "Ubaid",
"Age":19,
"Country":"Pakistan"
};
userInfo["email"]="ubaiddar1614@gmail.com";
userInfo["Age"]=20;

print("Updated map of userinfo is $userInfo");

userInfo.forEach((key, value) {
  print ("key:$key, value:$value");
});

String keyToCheck="Country";
if(userInfo.containsKey(keyToCheck))
{
  print("Map contains $keyToCheck. Its value is ${userInfo[keyToCheck]}");
}
else{
  print("Map does not contain $keyToCheck");
}
String keyToCheck1="PostalCode";
if(userInfo.containsKey(keyToCheck1))
{
  print("Map contains $keyToCheck1. Its value is ${userInfo[keyToCheck1]}");
}
else{
  print("Map does not contain $keyToCheck1");
}
userInfo.remove("email");
print("Map after removing email is $userInfo");
}
