const flashcardMatching = () => {

  // select the form input (id given through simple for form)
  const formRequestedPosition = document.querySelector('#flashcard_requested_position');
  /* console.log(formRequestedPosition) */
  const formTranslatedPosition = document.querySelector('#flashcard_translated_position');
  /* console.log(formTranslatedPosition) */

  // put in an array all btns for each column
  const requestedButtons = document.querySelectorAll('.flashcards-requested-buttons');
  const translatedButtons = document.querySelectorAll('.flashcards-translated-buttons');

  // select the form
  const positionsForm = document.querySelector('form');
  /* console.log(positionsForm) */

  // get the requested position of the word on click (column 1)
    // insert this requested position into the adequate form field
  requestedButtons.forEach( (requestedButton) => {
    requestedButton.addEventListener( 'click', (event) => {
      const requestedSavedPosition = requestedButton.dataset.requestedPosition
      console.log(requestedButton.dataset.requestedPosition)
      formRequestedPosition.value = requestedSavedPosition
      console.log(formRequestedPosition)
    });
  });

  // get the requested position of the word on click (column 2 + submit form)
    // insert this requested position into the adequate form field
  translatedButtons.forEach( (translatedButton) => {
    translatedButton.addEventListener( 'click', (event) => {
      const translatedSavedPosition = translatedButton.dataset.translatedPosition
      console.log(translatedButton.dataset.translatedPosition)
      formTranslatedPosition.value = translatedSavedPosition
      console.log(formTranslatedPosition)
      positionsForm.submit()
    });
  });

};

export { flashcardMatching };
