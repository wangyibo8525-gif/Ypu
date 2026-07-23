let userData = { name: "ไอเดอร์", mail: "" };
window.addEventListener("load", () => {
    setTimeout(() => {
        document.getElementById("loading").style.opacity = "0";
        setTimeout(() => document.getElementById("loading").style.display = "none", 400);
    }, 1600);
});
function switchPage(id){document.querySelector(".page.active")?.classList.remove("active");document.getElementById(id)?.classList.add("active");}
function doRegister(){
    const n=document.getElementById("inputName").value.trim()||"ไอเดอร์";
    userData.name=n;
    localStorage.setItem("user",JSON.stringify(userData));
    document.getElementById("showCreator").textContent=n;
    switchPage("giftPage");
}
function updatePreview(){document.getElementById("livePreview").srcdoc=document.getElementById("codeEditor").value;}
function callAI(){
    const need=prompt("ต้องการให้ AI ช่วยเรื่องอะไร?");
    if(need) alert(AssistantAI.help(need));
}
function jumpToSite(){
    const c=document.getElementById("jumpInput").value.trim();
    if(c.startsWith("x/2/")) window.open("https://"+c.slice(4),"_blank");
    else alert("ต้องเริ่มด้วย x/2/ นะครับ");
}
function revealSecret(){document.getElementById("secretChar").classList.remove("hidden");}
