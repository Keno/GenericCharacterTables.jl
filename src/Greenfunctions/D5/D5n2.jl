using ..GenericCharacterTables
import ..GenericCharacterTables: ExtendableMatrix, SimpleCharTable
using Oscar
R, q = PolynomialRing(QQ, "q")

order = q^20*(q-1)^5*(q+1)^4*(q^2+1)^2*(q^2+q+1)*(q^2-q+1)*(q^4+1)*(q^4+q^3+q^2+q+1)
table = QQPolyRingElem[[
	(q^2+1)^2*(q^2+q+1)*(q+1)^4*(q-1)^4*(q^2-q+1)*(q^4+1),
	-(q+1)^3*(q^2+q+1)*(q-1)^3*(q^2-q+1)*(q^2+1),
	-(q+1)^3*(q^2+q+1)*(q-1)^3*(q^2-q+1)*(q^2+1),
	(q+1)^2*(q-1)^2*(q^2+1),
	(q+1)^2*(q-1)^2*(q^2+1),
	(q+1)^2*(q-1)^2*(q^2+1),
	(q+1)^2*(q-1)^2*(q^2+1),
	-(q-1)*(q+1),
	(q+1)^2*(q-1)^2*(q^2+1),
	-(q-1)*(q+1),
	-(q-1)*(q+1),
	-(q-1)*(q+1),
	-(q-1)*(q+1),
	-(q-1)*(q+1),
	R(1),
	-(q-1)*(q+1),
	R(1),
	R(1)] [
	-(q+1)^3*(q^4+q^3+q^2+q+1)*(q^2+1)^2*(q-1)^3*(q^2-q+1)*(q^4+1),
	(q^4+q^3+q^2+q+1)*(q-1)^2*(q^2-q+1)*(q^2+1)*(q+1)^2,
	(q^4+q^3+q^2+q+1)*(q-1)^2*(q^2-q+1)*(q^2+1)*(q+1)^2,
	-(q-1)*(q+1)*(q^2+1)*(q^6-q^5+1+q^3),
	-(q-1)*(q+1)*(q^6+q^3+q^2+1),
	(q-1)*(q+1)*(q^5-q^3-q^2-1),
	-(q-1)*(q+1)^2*(q^2-q+1)*(q^2+1),
	q^6-q^5+1+q^3,
	-(q-1)*(q+1)*(q^2+1),
	(q^2-q+1)*(q+1),
	-(q-1)*(q+1)*(q^2+1),
	q^4+1,
	-(q-1)*(q^2+q+1),
	(q^2-q+1)*(q+1),
	q^2+1,
	-(q-1)*(q+1),
	R(1),
	R(1)] [
	-(q+1)^3*(q^2+q+1)*(q-1)^3*(q^2+1)*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	-(q^2+1)*(q^2+q+1)*(q^5-q^4-q^3-1)*(q-1)^2*(q+1)^2,
	(q^2+1)*(q^2-q+1)*(q^2+q+1)*(q-1)^2*(q+1)^3,
	(q-1)*(q+1)*(q^7+q^6+q^5-q^4-q^3-q^2-q-1),
	(q-1)*(q^5-q^2-1)*(q+1)^2,
	(q-1)*(q^3-2*q^2+q-1)*(q+1)^3,
	(q-1)*(q+1)*(q^2+1)*(q^3-q-1),
	-(q-1)*(q+1)^2*(q^2+1),
	-(q-1)*(q+1)^2*(q^2+1),
	-(q-1)*(q+1)*(q^2+q+1),
	-q^3+q^2+q+1,
	-(q-1)*(q+1)*(q^2+q+1),
	-q^3+q^2+q+1,
	-(q-1)*(q+1)^2,
	q+1,
	q+1,
	q+1,
	R(1)] [
	-(q+1)^3*(q^2+q+1)*(q-1)^3*(q^2+1)*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	-(q^2+1)*(q^2+q+1)*(q^5-q^4-q^3-1)*(q-1)^2*(q+1)^2,
	-(q-1)*(q^2-q+1)*(q^2+q+1)*(2*q^5-q^4+1)*(q+1)^2,
	(q^2+1)*(2*q^4+q^3+q+1+q^2)*(q-1)^2*(q+1)^2,
	-(q-1)*(q^5+q^2+1)*(q+1)^2,
	-(q-1)*(q+1)*(q^5-2*q^4+2*q^3+q^2+q+1),
	-(q-1)*(q+1)*(q^5+2*q^4+q^2+q+1),
	(q-1)*(q+1)*(2*q^4-q^3-q^2-q-1),
	(q^3+q^2-q+1)*(q+1)^2,
	-(q-1)*(q+1)*(q^2+q+1),
	-(q-1)*(q+1)*(q+1+2*q^2),
	(q^2-q+1)*(q+1)^2,
	(q+1)*(q^2+1),
	-q^2+1+q^3+q,
	-(2*q+1)*(q-1),
	q+1+2*q^2,
	q+1,
	R(1)] [
	(q^2+1)^2*(q-1)^2*(q+1)^4*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q-1)*(q^2+1)*(2*q^7-q^6-q^4-q^3-q^2-1)*(q+1)^3,
	(q-1)*(q^2+1)*(q^2-q+1)*(q^4-q^3-q^2-q-1)*(q+1)^3,
	(q-1)*(q^5-2*q^4-2*q^3-q^2-q-1)*(q^2+1)*(q+1)^2,
	-(q-1)*(q^5+q^4+3*q^3+2*q^2+q+1)*(q+1)^2,
	(q^2-q-1)*(q^3-3*q^2+q-1)*(q+1)^2,
	-(q-1)*(q^2+1)*(q^2+q+1)*(q+1)^2,
	-(q+1)*(q^5+2*q^4-2*q^3-q^2-q-1),
	(q^2+1)*(q+1)^2,
	-(q+1)*(2*q^4-q^2-q-1),
	-(q+1)*(q^3-3*q^2-q-1),
	-(q+1)*(q^3-q^2-q-1),
	q^3+4*q^2+2*q+1,
	-(q+1)*(q^2-q-1),
	(q+1)^2,
	(q+1)^2,
	2*q+1,
	R(1)] [
	(q^2+q+1)*(q^2+1)^2*(q-1)^2*(q+1)^2*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q-1)*(q+1)*(q^2+q+1)*(q^5-q^4-q^3-1)*(q^2+1)^2,
	-(q-1)*(q^2-q+1)*(q^2+q+1)*(q+1)^2*(q^2+1)^2,
	(q^2+1)*(2*q^8-q^7-q^6-q^5+q^4+q^3+q^2+q+1),
	(q+1)*(q^7-q^5+q^4+2*q^2+1),
	-(q-1)*(3*q^4+q^3+3*q^2+1)*(q+1)^2,
	(q+1)*(q^2+1)*(q^4-q^3+q^2+1),
	(q+1)*(q^2+1)^2,
	-(q-1)*(q+1)*(q^2+1)*(q+1+2*q^2),
	(q+1)*(q+1+2*q^2)*(q^2-q+1),
	-q^3+3*q^2+q+1,
	2*q^2+1+q^4-q^3+q,
	3*q^2-3*q^3+1+q,
	(q+1)*(q^2+1),
	q+1+2*q^2,
	q+1,
	q+1,
	R(1)] [
	(q^2+q+1)*(q^2+1)^2*(q-1)^2*(q+1)^2*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q-1)*(q+1)*(q^2+q+1)*(q^5-q^4-q^3-1)*(q^2+1)^2,
	(q+1)*(q^2-q+1)*(q^2+q+1)*(4*q^5-q^4+1)*(q^2+1),
	-(q-1)*(q+1)*(2*q^4+q^3+q+1+q^2)*(q^2+1)^2,
	(q+1)*(5*q^7+3*q^5+q^4+2*q^2+1),
	(q-1)*(q^6-7*q^5-4*q^4-7*q^3-4*q^2-2*q-1),
	(q+1)*(q^2+1)*(5*q^4-q^3+q^2+1),
	-(q-1)*(q^2+1)*(4*q^3+3*q^2+2*q+1),
	(q^2+1)*(6*q^4+3*q^3+q^2+q+1),
	(q+1)*(q+1+2*q^2)*(q^2-q+1),
	-(q-1)*(q+1)*(4*q^2+1+q),
	2*q^2+1+5*q^4+3*q^3+q,
	3*q^2+q^3+1+q,
	5*q^3+q^2+1+q,
	-(2*q+1)*(q-1),
	4*q^2+1+q,
	q+1,
	R(1)] [
	-(q-1)*(q+1)^3*(q^2+q+1)*(q^2+1)^2*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	-(q^2+1)*(q^2+q+1)*(3*q^7-q^6-q^4-q^3-q^2-1)*(q+1)^2,
	-(q^2+1)*(q^2-q+1)*(q^2+q+1)*(2*q^4-q^3-q^2-q-1)*(q+1)^2,
	-(q+1)*(q^2+1)*(4*q^7+q^6-2*q^5-5*q^4-4*q^3-3*q^2-2*q-1),
	-(q+1)*(q^7+2*q^6-3*q^5-5*q^4-6*q^3-4*q^2-2*q-1),
	-(q+1)*(5*q^6-5*q^5-8*q^4-9*q^3-4*q^2-2*q-1),
	-(q^2+1)*(q^3-2*q^2-q-1)*(q+1)^2,
	-2*q^6+9*q^4+6*q^2+10*q^3+3*q+1+5*q^5,
	(q+1)*(q^2+1)*(3*q^2+2*q+1),
	(q+3*q^2+1)*(q+1)^2,
	(q+1)*(2*q^3+7*q^2+2*q+1),
	6*q^2+3*q+1+q^4+3*q^3,
	9*q^2+3*q+1+5*q^3,
	(q+1)^3,
	4*q^2+3*q+1,
	(q+1)*(2*q+1),
	3*q+1,
	R(1)] [
	(q^2+q+1)*(q^2+1)^2*(q+1)^4*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q^2+1)*(q^2+q+1)*(5*q^6+4*q^5+4*q^4+3*q^3+2*q^2+q+1)*(q+1)^3,
	(q^2+1)*(q^2+q+1)*(q^2-q+1)*(4*q^3+3*q^2+2*q+1)*(q+1)^3,
	(q^2+1)*(10*q^6+15*q^5+15*q^4+10*q^3+6*q^2+3*q+1)*(q+1)^2,
	(5*q^6+15*q^5+16*q^4+13*q^3+7*q^2+3*q+1)*(q+1)^2,
	(25*q^5+26*q^4+18*q^3+7*q^2+3*q+1)*(q+1)^2,
	(5*q^3+6*q^2+3*q+1)*(q^2+1)*(q+1)^2,
	(q+1)*(20*q^5+25*q^4+20*q^3+10*q^2+4*q+1),
	(q^2+1)*(6*q^2+3*q+1)*(q+1)^2,
	(q+1)*(10*q^4+15*q^3+10*q^2+4*q+1),
	(q+1)*(20*q^3+15*q^2+4*q+1),
	(q+1)*(5*q^3+10*q^2+4*q+1),
	25*q^3+19*q^2+5*q+1,
	(q+1)*(5*q^2+4*q+1),
	10*q^2+5*q+1,
	(q+1)*(4*q+1),
	5*q+1,
	R(1)] [
	(q-1)^4*(q^2+q+1)*(q^2+1)^2*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	-(q^2+q+1)*(3*q^6-2*q^5+2*q^4-q^3+2*q^2-q+1)*(q^2+1)*(q-1)^3,
	(q^2-q+1)*(q^2+1)*(q^2+q+1)*(4*q^4-q^3+q^2-q+1)*(q-1)^2,
	(1-q+q^2-q^3+2*q^4)*(q-1)^2*(q^2+1)^2,
	(q-1)*(5*q^7-10*q^6+9*q^5-11*q^4+6*q^3-4*q^2+2*q-1),
	-(7*q^5-6*q^4+6*q^3-3*q^2+q-1)*(q-1)^2,
	-(q^2+1)*(11*q^5-8*q^4+4*q^3-5*q^2+3*q-1),
	(4*q^4-3*q^3+3*q^2-q+1)*(q-1)^2,
	(2*q-1)*(q-1)*(q^2+1)*(3*q^2+1),
	-(q-1)*(6*q^4-3*q^3+4*q^2-2*q+1),
	(q-1)*(4*q^3-q^2+2*q-1),
	(q-1)*(5*q^3-4*q^2+2*q-1),
	-7*q^3+3*q^2-3*q+1,
	-11*q^3+9*q^2-3*q+1,
	(2*q-1)*(q-1),
	4*q^2-3*q+1,
	-3*q+1,
	R(1)] [
	-(q-1)^3*(q+1)*(q^2+q+1)*(q^2+1)^2*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q^2+1)*(q^2+q+1)*(q^3+q^2+1)*(q^4+1)*(q-1)^2,
	-(q-1)*(q+1)*(q^2+1)*(q^2-q+1)*(q^2+q+1)*(1-q+q^2-q^3+2*q^4),
	-(q-1)*(q^4+1)*(q^2+1)^2,
	-(q^2+1)*(q^6-q^5-2*q^4+q^3-q^2+q-1),
	(q+1)*(3*q^4-q^3+3*q^2+1)*(q-1)^2,
	-(q^2+1)*(q^5-4*q^4-q^2+q-1),
	-(q-1)*(2*q^5+q^4+2*q^2+1),
	-(q-1)*(q^2+1)^2,
	-q^3+2*q^2-q+1+3*q^4,
	(q+1+2*q^2)*(q-1)^2,
	(q^2+1)*(q^2-q+1),
	q^2-q+1-3*q^3,
	3*q^2-q+1+q^3,
	-q+1,
	2*q^2-q+1,
	-q+1,
	R(1)] [
	(q-1)^4*(q+1)^4*(q^2+q+1)*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q^2+q+1)*(q^5-q^4-q^3-1)*(q-1)^3*(q+1)^3,
	-(q^2-q+1)*(q^2+q+1)*(q-1)^3*(q+1)^4,
	-(2*q^4+q^3+q+1+q^2)*(q-1)^3*(q+1)^3,
	(q-1)*(q^5+q^2-1)*(q+1)^2,
	(q^3+q+1)*(q-1)^2*(q+1)^2,
	-(3*q^5-2*q^4+q^2+q-1)*(q+1)^2,
	(q-1)^2*(q+1)^3,
	-(q-1)*(2*q^3-q^2+1)*(q+1)^2,
	(q-1)*(q+1)*(2*q^3+q^2-q-1),
	-(q-1)*(q+1)^2,
	(q-1)*(q+1)*(q^2-q-1),
	-q^2+1+q^3+q,
	-(q+1)*(3*q^2-1),
	-(2*q+1)*(q-1),
	q+1,
	q+1,
	R(1)] [
	(q-1)^4*(q+1)^2*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^4+1),
	-(q+1)*(q^2+q+1)*(q^4+q^3+q^2+q+1)*(q^2+1)*(q-1)^3,
	(q^2+q+1)*(q^4-q^3+q^2-q+1)*(q^2+1)*(q-1)^2*(q+1)^2,
	-(q+1)*(q^3-q-1)*(q-1)^2*(q^2+1)^2,
	-(q-1)*(q+1)*(q^6-q^3+q^2+1),
	-(q^3-2*q^2-1)*(q-1)^2*(q+1)^2,
	(q^2+1)*(q^5+2*q^4-q^3-q^2+1),
	(q+1)*(q^3+2*q^2+q+1)*(q-1)^2,
	-(q-1)*(q+1)*(q^2+1),
	-(q-1)*(q^2+q+1),
	(q-1)*(q^3-q^2-q-1),
	-(q-1)*(q+1)*(q^2+1),
	-(q-1)*(q^2+q+1),
	(q+1)*(q^2-q+1),
	-(q-1)*(q+1),
	q^2+1,
	R(1),
	R(1)] [
	(q+1)^2*(q^2+q+1)*(q-1)^4*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	-(q+1)*(q^2+q+1)*(q^3+q^2+1)*(q^4+1)*(q-1)^3,
	(q+1)*(q^2+q+1)*(q^2-q+1)*(q^4+1)*(q-1)^2,
	(q+1)*(q^2+1)*(q^4+1)*(q-1)^2,
	(q-1)*(q^7-q^5-q^4-1),
	(q+1)*(q^4-q^3+q^2+1)*(q-1)^2,
	(q-1)*(q+1)*(q^5-2*q^4-q^2+q-1),
	-(q-1)*(q^4+1),
	-(q-1)*(q+1)*(1-q+q^2-q^3+2*q^4),
	-(q-1)*(2*q^4+q^3+1),
	(q+1)*(q-1)^2,
	q^3-q+1+q^4,
	(q+1)*(q-1)^2,
	q^3+q^2-q+1,
	-q+1,
	-q+1,
	-q+1,
	R(1)] [
	(q-1)^4*(q+1)^2*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	-(q+1)*(q^2+1)*(2*q^7+q^6+q^4+q^3+q^2+1)*(q-1)^3,
	(q+1)*(q^2+1)*(q^2-q+1)*(q^5+2*q^4+1)*(q-1)^2,
	(q+1)*(q^3-q+1)*(q-1)^2*(q^2+1)^2,
	-(q-1)*(q+1)*(q^6-2*q^5+4*q^4-3*q^3+3*q^2-2*q+1),
	(q^5-q^3+q^2+1)*(q-1)^2,
	-(q-1)*(q+1)*(q^2+1)*(q^3+2*q^2-2*q+1),
	-(q-1)*(q^2+1)*(q^3-q+1),
	(q^2+1)*(q-1)^2,
	(q+1)*(q^2-q+1)*(2*q^2-2*q+1),
	-(q+1)*(q-1)^3,
	-(q-1)*(q^3+q^2-q+1),
	(q-1)*(q^2+q-1),
	1-2*q+4*q^2-q^3,
	(q-1)^2,
	(q-1)^2,
	1-2*q,
	R(1)] [
	-(q-1)^5*(q+1)*(q^2+q+1)*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	(q+1)*(q^2+q+1)*(3*q^6-2*q^5+2*q^4-q^3+2*q^2-q+1)*(q-1)^4,
	-(q^2+q+1)*(q^2-q+1)*(2*q^5+3*q^4+1)*(q-1)^3,
	-(q+1)*(q^2+1)*(1-q+q^2-q^3+2*q^4)*(q-1)^3,
	-(q^6-q^5-4*q^4+q^3-q^2+q-1)*(q-1)^2,
	-(q^3-2*q^2-q-1)*(q-1)^4,
	(q-1)*(q+1)*(7*q^5-6*q^4+4*q^3-5*q^2+3*q-1),
	(1-q+q^2-q^3+2*q^4)*(q-1)^2,
	-(3*q^3-q^2+q-1)*(q-1)^2,
	-(q-1)*(q^3+2*q^2-2*q+1),
	-(q+1)*(2*q-1)*(q-1)^2,
	(q^2-q+1)*(q-1)^2,
	(q-1)*(q^2+2*q-1),
	-7*q^3+7*q^2-3*q+1,
	(2*q-1)*(q-1),
	(2*q-1)*(q-1),
	-3*q+1,
	R(1)] [
	-(q-1)^5*(q+1)^3*(q^2+q+1)*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	-(q^2+q+1)*(q+1)^2*(q-1)^4*(-q^4-q^3-q^2-q-1),
	(q^2+q+1)*(q+1)^2*(q-1)^3*(q^5-1),
	(q^2+1)*(q+1)^2*(q-1)^3*(q^3-q-1),
	-(q+1)*(q-1)^2*(q^5+q^4+q^3-q-1),
	(q+1)*(q-1)^3*(-q^3-2*q^2-2*q-1),
	(q-1)*(q+1)*(q^5+q^3+q^2-1),
	-(q+1)*(q-1)^2*(q^3-q-1),
	-(q+1)*(q-1)^2*(-q-1),
	(q-1)*(2*q^3+q^2-q-1),
	(q+1)^2*(q-1)^2,
	(q-1)*(q+1)*(q^2-1),
	(q-1)*(q^2-q-1),
	-q^3-2*q^2+1,
	-(q-1)*(q+1),
	-(q-1)*(q+1),
	R(1),
	R(1)] [
	-(q-1)^5*(q+1)^3*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1),
	(q^2+q+1)*(q+1)^2*(q-1)^4*(q^2+1)*(q^3+q^2+1),
	-(q^2+q+1)*(q^2-q+1)*(q+1)^2*(q-1)^3*(q^2+1),
	-(q^2+1)^2*(q+1)^2*(q-1)^3,
	(q+1)*(q-1)^2*(q^5+q^2+1),
	-(q+1)*(q-1)^3*(q^3+2*q^2+q+1),
	-(q-1)*(q+1)*(q^2+1)*(q^3-q+1),
	(q+1)*(q-1)^2*(q^2+1),
	(q+1)*(q-1)^2*(q^2+1),
	-(q-1)*(q+1)*(q^2-q+1),
	(q+1)*(q-1)^2,
	-(q-1)*(q+1)*(q^2-q+1),
	(q+1)*(q-1)^2,
	q^3+q^2-q+1,
	-q+1,
	-q+1,
	-q+1,
	R(1)]]
classinfo = Vector{Any}[[], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], []]
classlength = R.([
	1,
	(q-1)*(q+1)*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^3*(q-1)^2*(q+1)*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	q^2*(q-1)^2*(q+1)^2*(q^2+q+1)*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^3*(q-1)^3*(q+1)^2*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	1//2*q^6*(q-1)^2*(q+1)^2*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	1//2*q^6*(q-1)^4*(q+1)^2*(q^2+q+1)*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^6*(q-1)^3*(q+1)^3*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^9*(q-1)^3*(q+1)^2*(q^2+q+1)*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^7*(q-1)^4*(q+1)^3*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^10*(q-1)^3*(q+1)^3*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^9*(q-1)^4*(q+1)^3*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	1//2*q^10*(q-1)^4*(q+1)^4*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	1//2*q^10*(q-1)^5*(q+1)^3*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^12*(q-1)^4*(q+1)^4*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^13*(q-1)^4*(q+1)^3*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^13*(q-1)^5*(q+1)^4*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	q^15*(q-1)^5*(q+1)^4*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1)])
classtypeorder = R.([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
charinfo = Vector{Any}[
	[[5],[]],
	[[32],[]],
	[[41],[]],
	[[1,1],[2,1]],
	[[3,1,1],[]],
	[[2,2,1],[]],
	[[1,1,1],[1,1]],
	[[2,1,1,1],[]],
	[[1,1,1,1,1],[]],
	[[1],[1,1,1,1]],
	[[2,1],[1,1]],
	[[1],[2,2]],
	[[1],[3,1]],
	[[2],[2,1]],
	[[3],[1,1]],
	[[],[2,1,1,1]],
	[[],[3,2]],
	[[],[4,1]]]
chardegree = R.([
	(q^2+1)^2*(q^2+q+1)*(q+1)^4*(q-1)^4*(q^2-q+1)*(q^4+1),
	-(q+1)^3*(q^4+q^3+q^2+q+1)*(q^2+1)^2*(q-1)^3*(q^2-q+1)*(q^4+1),
	-(q+1)^3*(q^2+q+1)*(q-1)^3*(q^2+1)*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	-(q+1)^3*(q^2+q+1)*(q-1)^3*(q^2+1)*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q^2+1)^2*(q-1)^2*(q+1)^4*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q^2+q+1)*(q^2+1)^2*(q-1)^2*(q+1)^2*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q^2+q+1)*(q^2+1)^2*(q-1)^2*(q+1)^2*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	-(q-1)*(q+1)^3*(q^2+q+1)*(q^2+1)^2*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q^2+q+1)*(q^2+1)^2*(q+1)^4*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q-1)^4*(q^2+q+1)*(q^2+1)^2*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	-(q-1)^3*(q+1)*(q^2+q+1)*(q^2+1)^2*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q-1)^4*(q+1)^4*(q^2+q+1)*(q^2-q+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q-1)^4*(q+1)^2*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^4+1),
	(q+1)^2*(q^2+q+1)*(q-1)^4*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	(q-1)^4*(q+1)^2*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	-(q-1)^5*(q+1)*(q^2+q+1)*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^2-q+1)*(q^4+1),
	-(q-1)^5*(q+1)^3*(q^2+q+1)*(q^2+1)*(q^4+q^3+q^2+q+1)*(q^4+1),
	-(q-1)^5*(q+1)^3*(q^2+q+1)*(q^2+1)^2*(q^4+q^3+q^2+q+1)*(q^2-q+1)])

information = ""
TABLE=SimpleCharTable(order,ExtendableMatrix(permutedims(table)),classinfo,classlength,classtypeorder,charinfo,chardegree,R,information)
