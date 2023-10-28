package runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class ParallelRunner {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:features").parallel(2);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
