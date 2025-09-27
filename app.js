// Aplicación de ejemplo para practicar Git Flow - v1.4

class Calculator {
    constructor() {
        this.result = 0;
        this.history = [];
    }

    add(a, b) {
        const result = a + b;
        this.history.push(`${a} + ${b} = ${result}`);
        return result;
    }

    subtract(a, b) {
        const result = a - b;
        this.history.push(`${a} - ${b} = ${result}`);
        return result;
    }

    multiply(a, b) {
        const result = a * b;
        this.history.push(`${a} * ${b} = ${result}`);
        return result;
    }

    divide(a, b) {
        if (b === 0) {
            throw new Error('No se puede dividir por cero');
        }
        const result = a / b;
        this.history.push(`${a} / ${b} = ${result}`);
        return result;
    }

    // Nueva funcionalidad v1.4
    power(base, exponent) {
        const result = Math.pow(base, exponent);
        this.history.push(`${base} ^ ${exponent} = ${result}`);
        return result;
    }

    // Nueva funcionalidad v1.4
    getHistory() {
        return this.history;
    }

    // Nueva funcionalidad v1.4
    clearHistory() {
        this.history = [];
        return 'Historial limpiado';
    }
}

// Ejemplo de uso
const calc = new Calculator();
console.log('Calculadora v1.4 inicializada');
console.log('2 + 3 =', calc.add(2, 3));
console.log('5 ^ 2 =', calc.power(5, 2));
console.log('Historial:', calc.getHistory());
