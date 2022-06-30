const {ethers} = require("hardhat")
async function main()
{
    const whitelistcontract = await ethers.getContractFactory("Whitelist");
    const deployedWhitelistContract = await whitelistcontract.deploy(10);
    console.log("deployed contract address",deployedWhitelistContract.address)
}
main().then(()=>process.exit(0))
.catch((error)=>{
    console.log(error);
    process.exit(1);
})