/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package container;

import java.math.BigDecimal;

public abstract class Vehicle {
    protected BigDecimal hargaPerJam;

    public Vehicle(BigDecimal hargaPerJam) {
        this.hargaPerJam = hargaPerJam;
    }

    public BigDecimal getHargaPerJam() {
        return hargaPerJam;
    }

    public abstract BigDecimal calculateBiayaParkir(long totalJamParkir);
}

/**
 *
 * @author Moh. Isis
 */

