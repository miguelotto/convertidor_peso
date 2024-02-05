import 'funciones.dart';
import 'package:flutter/material.dart';

void comprobar(String v1, String v2, double n1,
    TextEditingController _valortext2, List<String> items) {
  if (v1 == items[1] && v2 == items[4]) {
    k_gramos(n1, _valortext2);
  }
  if (v1 == items[1] && v2 == items[2]) {
    k_libras(n1, _valortext2);
  }
  if (v1 == items[1] && v2 == items[3]) {
    k_onzas(n1, _valortext2);
  }
  if (v1 == items[1] && v2 == items[5]) {
    k_miligramos(n1, _valortext2);
  }
  if (v1 == items[1] && v2 == items[6]) {
    k_quilates(n1, _valortext2);
  }
  if (v1 == items[2] && v2 == items[1]) {
    l_kilo(n1, _valortext2);
  }
  if (v1 == items[2] && v2 == items[3]) {
    l_onzas(n1, _valortext2);
  }
  if (v1 == items[2] && v2 == items[4]) {
    l_gramos(n1, _valortext2);
  }
  if (v1 == items[2] && v2 == items[5]) {
    l_miligramos(n1, _valortext2);
  }
  if (v1 == items[2] && v2 == items[6]) {
    l_quilates(n1, _valortext2);
  }
  if (v1 == items[3] && v2 == items[1]) {
    o_kilo(n1, _valortext2);
  }
  if (v1 == items[3] && v2 == items[2]) {
    o_libras(n1, _valortext2);
  }
  if (v1 == items[3] && v2 == items[4]) {
    o_gramos(n1, _valortext2);
  }
  if (v1 == items[3] && v2 == items[5]) {
    o_miligramos(n1, _valortext2);
  }
  if (v1 == items[3] && v2 == items[6]) {
    o_quilates(n1, _valortext2);
  }
  if (v1 == items[4] && v2 == items[1]) {
    g_kilo(n1, _valortext2);
  }
  if (v1 == items[4] && v2 == items[2]) {
    g_libras(n1, _valortext2);
  }
  if (v1 == items[4] && v2 == items[3]) {
    g_onzas(n1, _valortext2);
  }
  if (v1 == items[4] && v2 == items[5]) {
    g_miligramos(n1, _valortext2);
  }
  if (v1 == items[4] && v2 == items[6]) {
    g_quilates(n1, _valortext2);
  }
  if (v1 == items[5] && v2 == items[1]) {
    m_kilo(n1, _valortext2);
  }
  if (v1 == items[5] && v2 == items[2]) {
    m_libras(n1, _valortext2);
  }
  if (v1 == items[5] && v2 == items[3]) {
    m_onzas(n1, _valortext2);
  }
  if (v1 == items[5] && v2 == items[4]) {
    m_gramos(n1, _valortext2);
  }
  if (v1 == items[5] && v2 == items[6]) {
    m_quilates(n1, _valortext2);
  }
  if (v1 == items[6] && v2 == items[1]) {
    q_kilo(n1, _valortext2);
  }
  if (v1 == items[6] && v2 == items[2]) {
    q_libras(n1, _valortext2);
  }
  if (v1 == items[6] && v2 == items[3]) {
    q_onzas(n1, _valortext2);
  }
  if (v1 == items[6] && v2 == items[4]) {
    q_gramos(n1, _valortext2);
  }
  if (v1 == items[6] && v2 == items[5]) {
    q_miligramos(n1, _valortext2);
  }
}
