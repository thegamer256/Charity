
package Operator;

import java.util.List;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Builder
@Getter
@Setter
@ToString
public class Operator {
    private int operatorId;
    private int programId;
    private String operatorDate;
    private String operatorDetailDes;
    private double actualExpense;
    private List<OperatorImage> activiesImgs;
    private List<OperatorImage> billImgs;

}
