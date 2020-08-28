# dependencylist
This small script is useful when working on static analysis which gives the list of libraries used by the focused package. Sometimes we are curious about the relation between the packages and we don't want to see most known libraries in our list. So this script ignores the known libraries from list and gives us the interesting lib names.  

This script trace the import packages of the class and list the libraries in order and ignore the ones in the ignored_packages.txt file

#Example class
```
pakcage com.example.myapp;

import android.content.Intent;
import retrofit2.Response;
import com.interesting.library.InterestingClass;

public class MyClass{
  
  private InterestingClass interestingClass;
```

##Run the script
```
#./dependencylist.sh /Projects/example/com/example/
```

##Result
```
import com.interesting.library.InterestingClass;
```



