import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {num1: "", num2: "", result: 0};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.clear = this.clear.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply =  this.multiply.bind(this);
    this.divide = this.divide.bind(this);
  }

  // your code here



  setNum1(e) {
    const num1 = e.target.value ? parseFloat(e.target.value) : "";
    this.setState({num1});
  }

  setNum2(e) {
    const num2 = e.target.value ? parseFloat(e.target.value) : "";
    this.setState({num2});
  }

  clear(e) {
    e.preventDefault();
    this.setState({num1: "", num2: "", result: 0});
  }

  add(e) {
    e.preventDefault();
    const result = this.state.num1 + this.state.num2;
    this.setState({result});
  }

  subtract(e) {
    e.preventDefault();
    const result = this.state.num1 - this.state.num2;
    this.setState({result});
  }

  multiply(e) {
    e.preventDefault();
    const result = this.state.num1 * this.state.num2;
    this.setState({result});
  }

  divide(e) {
    e.preventDefault();
    const result = this.state.num1 / this.state.num2;
    this.setState({result});
  }

  ignore() {}

  render() {
    const {num1, num2, result} = this.state;
    return (
      <div>
        <section>
          <h1>Calculator</h1>
          <button class="button" onClick={this.clear}>clear</button>
          <br />

          <input onChange={this.setNum1} value={num1}/>
          <button class="button" onClick={this.add}>+</button>
          <button class="button" onClick={this.subtract}>-</button>
          <button class="button" onClick={this.multiply}>*</button>
          <button class="button" onClick={this.divide}>/</button>
          <br />

          <input onChange={this.setNum2} value={num2}/>


          <br />

          <h2>Result: {this.state.result}</h2>
        </section>
      </div>
    );
  }



}

export default Calculator;
