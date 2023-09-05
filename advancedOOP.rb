#attr_accessor é uma funcionalidade de metaprogramação que permite
#criar métodos getter e setter para atributos de objetos dinamicamente,
#sem definí-los explicitamente na sua classe. Metaprogramação é uma
#técnica na qual você escreve código que escreve código em tempo de
#execução.
#Usando attr_accessor, é um método em ruby que recebe um ou mais símbolos
#como argumentos representando os nomes dos atributos que você quer
#criar métodos getter e setter. Quando você chama attr_accessor :nome
#na definição de uma classe, o ruby gera dinamicamente, em tempo de execução,
#os métodos getter e setter para o atributo nome. O método getter é
#Em tempo de execução, quando a classe é carregada, o Ruby usa técnicas
#de metaprogramação para gerar esses métodos dinamicamente.
#Ele faz isso definindo métodos na metaclass ou classe singleton da classe
#, que é uma classe oculta associada a cada objeto. Esses métodos gerados
#fazem parte da interface da classe.
#Com a utilização de metaprogramação, o código fica mais limpo e fácil de
#entender, evitando repetições.
class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      def #{attr_name}=(value)
        @#{attr_name} = value
        if @#{attr_name}_history.nil?
        @#{attr_name}_history = [nil]
        end
        @#{attr_name}_history << value
      end
      }
  end
  end
  class Foo
  attr_accessor_with_history :bar
  end
  f = Foo.new
  f.bar = 1
  f.bar = 2
  print "["
  f.bar_history.each do |x|
    print x
    if x != f.bar_history.last
      print ", "
      end
  end
  print "]"
