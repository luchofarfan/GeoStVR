// Aplicación de ejemplo para practicar Git Flow

class Calculator {
    constructor() {
        this.result = 0;
    }

    add(a, b) {
        return a + b;
    }

    subtract(a, b) {
        return a - b;
    }

    multiply(a, b) {
        return a * b;
    }

    divide(a, b) {
        if (b === 0) {
            throw new Error('No se puede dividir por cero');
        }
        return a / b;
    }
}

// Ejemplo de uso
const calc = new Calculator();
console.log('Calculadora inicializada');
console.log('2 + 3 =', calc.add(2, 3));
