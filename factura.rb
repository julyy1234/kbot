class Factura
    def initialize(cant,precio,estado)
        @impuesto= {"UT"=> 0,0685, "NV"=> 0,08, "TX"=> 0,0625, "AL"=> 0,04, "CA"=> 0,0825}
        @descuento= {1000=> 0,03, 5000=> 0,05, 7000=> 0,07, 10000=> 0,1, 50000=> 0,15}
        @cant = cant
        @precio = precio
        @estado = estado
        @total_inicial = cant * precio
        @impuestos = 0
        @descuentos = 0
        @total_final = 0
    end
    
    def calcular_impuestos()
        @impuestos = @total_inicial * @impuesto[@estado] 
    end

    def calcular_descuentos()
        @descuentos = @total_inicial * @descuento[@estado] 
    end
    
    def calcular_total_final()
        @total_final = @total_inicial + @impuestos - @descuentos
    end

    def mostrar_totales()
        puts "Total inicial: #{@total_inicial}"
        puts "Impuestos: #{@impuestos}"
        puts "Descuento: #{@descuentos}"
        puts "Total Final: #{@total_final}"
    end
end

cant = ARGV[0]
precio = ARGV[1]
estado = ARGV[2]

factura = Factura.new(cant,precio,estado)
calcular_impuestos()
calcular_descuentos()
calcular_total_final()
mostrar_totales()