package container;

import java.math.BigDecimal;

public class Mobil extends Vehicle {
    public Mobil(BigDecimal hargaPerJam) {
        super(hargaPerJam);
    }

    @Override
    public BigDecimal calculateBiayaParkir(long totalJamParkir) {
        BigDecimal biayaParkir = hargaPerJam.multiply(new BigDecimal(totalJamParkir));
        // Batas Maksimal Biaya Parkir
        if (biayaParkir.compareTo(new BigDecimal("25000")) > 0) {
            biayaParkir = new BigDecimal("25000");
        }
        return biayaParkir;
    }
}

