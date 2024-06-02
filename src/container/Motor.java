package container;

import java.math.BigDecimal;

public class Motor extends Vehicle {
    public Motor(BigDecimal hargaPerJam) {
        super(hargaPerJam);
    }

    @Override
    public BigDecimal calculateBiayaParkir(long totalJamParkir) {
        BigDecimal biayaParkir = hargaPerJam.multiply(new BigDecimal(totalJamParkir));
        // Batas Maksimal Biaya Parkir
        if (biayaParkir.compareTo(new BigDecimal("15000")) > 0) {
            biayaParkir = new BigDecimal("15000");
        }
        return biayaParkir;
    }
}
