
package Operator;

import java.util.List;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Builder
public class OperatorVO {
    private int operatorId;
    private int programId;
    private String operatorDate;
    private String operatorDetailDes;
    private long actualExpense;
    private List<OperatorImage> activiesImgs;
    private List<OperatorImage> billImgs;
    private String city;
    private String province;
    private String address;

    
}
