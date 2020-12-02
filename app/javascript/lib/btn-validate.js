const btnValidate = () => {

  const toggleBodies = document.querySelectorAll('.toggle-body');
  toggleBodies.forEach((toggleBody) => {

    const background = document.querySelector('.background2');
    const toggleBtn = toggleBody.querySelector('.toggle-btn');

    toggleBody.addEventListener('click', (event) => {
      background.classList.toggle('background2--on');
      toggleBody.classList.toggle('toggle-body--on');
      console.log(event.currentTarget);
      toggleBtn.classList.toggle('toggle-btn--on');
      toggleBtn.classList.toggle('toggle-btn--scale');
    });
  });


    toggleBodies.forEach((toggleBody) => {
      toggleBody.addEventListener("click", (event)=>{
        const toggleBodiesOn = document.querySelectorAll('.toggle-body--on');
        const total = toggleBodiesOn.length
          if (total > 1) {
            document.querySelector('#results').innerText = `Vous avez appris ${total} mots!`;
          }
          else {
            document.querySelector('#results').innerText = `Vous avez appris ${total} mot!`;
          }
    })
  });
};


export { btnValidate };

