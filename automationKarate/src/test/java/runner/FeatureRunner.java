package runner;

import com.intuit.karate.junit5.Karate;

class FeatureRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("../features/retreiveUsers").relativeTo(getClass());
    }    

}
