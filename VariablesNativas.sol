// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract VariablesNativas {

    string private fullName; // Solo la puede acceder el que inicializo el contrato

    constructor(string memory _lastName) {
        fullName = string.concat("Mi nombre es:", " ", _lastName);
    }

    function getName() public view returns (string memory) {
        return fullName;
    }

    /*
    uint enteros sin signo (no negativos)
    uint8 rango de 0 a 2 ** 8 -1 (2 con 8 ceros y le resto 1, queda 2 con 7 ceros y el 9)
    uint16 rango de 0 a 2 ** 16 -1
    */

    uint8 public unt_8 = 1;
    uint16 public uint_16 = 123;

    // int permite guardar numeros con signo negativo
    int8 public int_8 = -1;

    // address como tal es una direccion
    address public my_address = 0x16d74A7485017e552f52b31e0B8925DaAEFb3A49;
}
