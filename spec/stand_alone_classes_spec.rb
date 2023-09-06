require 'rspec'
require 'stand_alone_classes'

describe 'stand-alone classes' do
  it 'sus instancias usan sus métodos para responder a los mensajes que reciben' do
    una_clase = clase {
      def initialize(v1)
        @v1 = v1
      end

      def m1
        @v1
      end
    }

    una_instancia = una_clase.new("resultado m1")
    expect(una_instancia.m1).to eq("resultado m1")
  end

  it 'pueden incluír mixines' do
    un_mixin = Module.new do
      def m1
        "m1 desde módulo"
      end
    end
    una_clase = clase {
      include un_mixin
    }

    una_instancia = una_clase.new
    expect(una_instancia.m1).to eq("m1 desde módulo")
  end

  it 'pueden subclasificar una clase existente' do
    superclase = Class.new do
      def m1
        "m1 desde superclase"
      end
    end
    una_clase = clase(superclase) {}

    una_instancia = una_clase.new
    expect(una_instancia.m1).to eq("m1 desde superclase")
  end
end
