class Factura
    def initialize(cant,precio,estado)
        @impuesto= {"UT"=> 0,0685, "NV"=> 0,08, "TX"=> 0,0625, "AL"=> 0,04, "CA"=> 0,0825}
        @descuento= {1000=> 0,03, 5000=> 0,05, 7000=> 0,07, 10000=> 0,1, 50000=> 0,15}
    end
end

cant = ARGV[0]
precio = ARGV[1]
estado = ARGV[2]