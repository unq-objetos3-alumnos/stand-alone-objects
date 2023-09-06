require 'rspec'
require 'stand_alone_objects'

describe 'stand-alone objects' do
  it 'usan sus métodos para responder a los mensajes que reciben' do
    un_objeto = object {
      def m1
        "resultado m1"
      end

      def m2
        "resultado m2"
      end
    }

    expect(un_objeto.m1).to eq("resultado m1")
    expect(un_objeto.m2).to eq("resultado m2")
  end

  it 'pueden incluír mixines' do
    un_mixin = Module.new do
      def m1
        "m1 desde módulo"
      end
    end
    un_objeto = object {
      include un_mixin
    }

    expect(un_objeto.m1).to eq("m1 desde módulo")
  end

  it 'pueden ser casos particulares de una clase existente' do
    una_clase = Class.new do
      def m1
        "m1 desde clase"
      end
    end
    un_objeto = object(una_clase) {}

    expect(un_objeto.m1).to eq("m1 desde clase")
  end
end
