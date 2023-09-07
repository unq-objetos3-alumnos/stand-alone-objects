require 'rspec'
require_relative '../ejemplos/booleanos'

describe 'ejemplos de uso de stand-alone objects: booleanos' do
  it 'implementan el not' do
    expect(!Falso).to eq(Verdadero)
    expect(!Verdadero).to eq(Falso)
  end

  it 'implementan la conjunción' do
    expect(Falso & Falso).to eq(Falso)
    expect(Falso & Verdadero).to eq(Falso)
    expect(Verdadero & Falso).to eq(Falso)
    expect(Verdadero & Verdadero).to eq(Verdadero)
  end

  it 'implementan la disyunción' do
    expect(Falso | Falso).to eq(Falso)
    expect(Falso | Verdadero).to eq(Verdadero)
    expect(Verdadero | Falso).to eq(Verdadero)
    expect(Verdadero | Verdadero).to eq(Verdadero)
  end
end