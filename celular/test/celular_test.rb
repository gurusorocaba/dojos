#encoding: utf-8
require "test_helper"


class CelularTest < MiniTest::Unit::TestCase
  def test_letra_a
    assert_equal '2', Celular.traduz('A')
  end

  def test_letra_b
    assert_equal '22', Celular.traduz('B')
  end

  def test_espaco
    assert_equal '0', Celular.traduz(' ')
  end

  def test_texto_ab
    assert_equal '2_22', Celular.traduz('AB')
  end

  def test_texto_abc
    assert_equal '2_22_222', Celular.traduz('ABC')
  end

  def test_texto_sempre
    assert_equal '77773367_77733', Celular.traduz('SEMPRE')
  end

  def test_texto_sempre_acesso_o_apontador
    assert_equal '77773367_7773302_222337777_77776660666027666_66823666777', Celular.traduz('SEMPRE ACESSO O APONTADOR')
  end

  def test_texto_sempre_acesso_o_apontador_minusculo
    assert_equal '77773367_7773302_222337777_77776660666027666_66823666777', Celular.traduz('sempre acesso o apontador')
  end

  def test_texto_nil
    assert_equal '', Celular.traduz(nil)
  end

  def test_texto_vazio
    assert_equal '', Celular.traduz('')
  end

  def test_texto_com_numeros
    assert_equal '', Celular.traduz('8')
  end

  def test_texto_com_acentos
    assert_equal '662666', Celular.traduz('NÃO')
  end

  def test_texto_com_acento_minusculo
    assert_equal '662666', Celular.traduz('não')
  end

  def test_text_com_acento_e_espaco
    assert_equal '662666024446632', Celular.traduz('não ainda')
  end

  def test_mapa_de_caracteres
    assert Celular::MAP
  end

end