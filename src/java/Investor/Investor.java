/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Investor;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author huynh
 */
@Builder
@Getter
@Setter
@ToString
public class Investor {
    private int investorId;
    private int programId;
    private String investorName;
    private String investorImg;
    private String investorDes;
    private String contact;
    private String qualifyImg;
    private String legalRepresent;
}
