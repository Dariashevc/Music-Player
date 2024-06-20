const musicContainer = document.querySelector('.music-container');
const playBtn = document.querySelector('#play');
const prevBtn = document.querySelector('#prev');
const nextBtn = document.querySelector('#next');
const audio = document.querySelector('#audio');
const progress = document.querySelector('#progress');
const progressContainer = document.querySelector('#progress-container');
const title = document.querySelector('#title');
const cover = document.querySelector('#cover');

const songs = ['Happy Together', 'Snap Out Of It', 'While You Wait For The Others', 'The Sweet Escape', 'Lost In Paradise', 'Everyone Adores You At Least I Do',
	'Nobody', 'Good Old-Fashioned Lover Boy', 'Hidden In The Sand', 'The Blonde'];

let songIndex = 0;

loadSong(songs[songIndex]);

function loadSong(song) {
  title.innerText = song;
  audio.src = `/music/${song}.mp3`;
  cover.src = `/images/${song}.jpg`;
}