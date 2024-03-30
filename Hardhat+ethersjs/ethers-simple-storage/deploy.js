//with solidity, we will use synchronus, - as in compilation is one learn after another
//javascript is asynchronus - multiple things can happen at the same time, we don't have to wait for sth to finish to do the next step; but sometime, we need to tell js to wait for sth to happen first before we can continue 
//for example when we deploy a contract we want to actually wait for it to be deployed so that we can continue --- so you have to specify async await fn
async function main() {
    //now after installing solc, we can compile here, or separately
    //to compile run "yarn solcjs --bin --abi --include-path node_modules/ --base-path . -o . SimpleStorage.sol"  --------instead of repeating this all the time, lets create a script called compile in our package.json:: so now just run yarn compile
    //that will give us two files,  the .bin(the binary version) and the .abi(which is an abi)

    //to deploy - the jsVM or the injected Web3 like in remix ide
    //we are going to use Ganache - is a fake blockchain that you can use locally

}


main()
.then(() => ProcessingInstruction.exit(0))
.catch((error) => {
    console.erroe(error);
    ProcessingInstruction.exit(1)
})