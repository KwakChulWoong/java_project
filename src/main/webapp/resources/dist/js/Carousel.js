/**
 * 
 */
/*
 * [Carousel.js] @params ▼ element : element options : { CarouselMotion :
 * String(default, slide, prev, fade) - default : default / [slide, prev, fade]
 * support ie 10++, chrome, fireFox.. morden browser naviPosition : String(top,
 * left, right, bottom) - default : bottom naviStyle : String(dot, arrow) -
 * default : dot autoMove : boolen - default : false autoMoveTime : Number -
 * default : 3000 }
 * 
 * **** create by juno *****
 */

class Carousel {
  constructor(element, options = {}) {
    this.CarouselMotion = !options.CarouselMotion ? 'default' : options.CarouselMotion;
    this.naviPosition = !options.naviPosition ? 'bottom' : options.naviPosition;
    this.naviStyle = !options.naviStyle ? 'button' : options.naviStyle;
    this.autoMove = !options.autoMove ? false : options.autoMove; 	// 알아서 전환되는거
																	// 주석처리하게 되면
																	// 작동안함
    this.autoMoveTime = !options.autoMoveTime ? 3000 : options.autoMoveTime;
    this.element = element; // element
    this.carouselIndex = 0;
    this.autoMoveReady;

    // default setting
//    this.element.children[0].style.width = `${this.element.clientWidth * this.element.children[0].children.length}px`;
    for (let i = 0; i < this.element.children[0].children.length-1; i++) { //이거 해야지 마지막에 아무것도 없는 화면이 안뜸 마지막 인덱스가 있는거같음
      this.element.children[0].children[i].style.width = `${this.element.clientWidth}px`;
    };

    // functions
    this._naviMaker();
    this._optionSetting();
    if (this.autoMove) this._autoMoveMouseEvent();
  }

  
  
  _naviMaker() {
    let naviElement = '';
    let text = ['스노쿨링','골프채','캠핑장비','낚시대']; // 쓰고 싶은 말을 여기다가 쓰면 됨 리스트 생성해서 뿌리는걸로 이게 배너에 나오는 4가지의 버튼임
    if (this.naviStyle === 'arrow') {
      this.element.children[1].setAttribute('class', 'navi-arrow');

      naviElement += `<div class="navi-arrow-left">Left</div>`;
      naviElement += `<div class="navi-arrow-right">Right</div>`;
    } else {
      for (let i = 0; i < this.element.children[0].children.length; i++) { 
        naviElement += `<span style="line-height:70px; text-align:center;" ${i === 0 ? 'class="navi-on"' : ''}>`+text[i]+`</span>`;
      }	
    }
    
    this.element.children[1].innerHTML = naviElement;

    for (let i = 0; i < this.element.children[1].children.length; i++) {
      if (this.naviStyle === 'arrow') {
        this.element.children[1].children[i].onclick = () => {
          if (this.autoMove) clearInterval(this.autoMoveReady);
          if (i) this.carouselIndex = this.carouselIndex >= this.element.children[0].children.length - 1 ? 0 : this.carouselIndex + 1;
          else this.carouselIndex = this.carouselIndex <= 0 ? this.element.children[0].children.length - 1 : this.carouselIndex - 1;
          this._moveAction(this.carouselIndex);
        }
      } else {
        this.element.children[1].children[i].addEventListener('click', () => { // click
																				// event
																				// register
        	if(this.carouselIndex == 3){
	      	  $('#f_img').attr('src','/resources/images/res_4.jpg');
	        }
          if (this.autoMove) clearInterval(this.autoMoveReady);
          this.carouselIndex = i;
          this._moveAction(i);
        });
      }
    }
  }

  _autoMoveMouseEvent() {
    this.autoMoveReady = setInterval(() => {
      if (this.carouselIndex >= this.element.children[0].children.length - 1) this.carouselIndex = 0;
      else this.carouselIndex = this.carouselIndex + 1;
      this._moveAction(this.carouselIndex);
    }, this.autoMoveTime);
    this.element.addEventListener('mouseenter', () => { // mouse over
      clearInterval(this.autoMoveReady);
    })
    this.element.addEventListener('mouseleave', () => { // mouse out
      this.autoMoveReady = setInterval(() => {
        if (this.carouselIndex >= this.element.children[0].children.length - 1) this.carouselIndex = 0;
        else this.carouselIndex = this.carouselIndex + 1;
        this._moveAction(this.carouselIndex);
      }, this.autoMoveTime);
    })
  }

  _moveAction(index) {
    if (this.CarouselMotion === 'prev') { // Motion prev
      if (index === this.element.children[0].children.length - 1) {
        this.element.children[0].style['transform'] = `translate(-${(this.element.clientWidth * 0.8) * index - (this.element.clientWidth - this.element.clientWidth * 0.8)}px, 0)`;
        this.element.children[0].style['msTransform'] = `translate(-${(this.element.clientWidth * 0.8) * index - (this.element.clientWidth - this.element.clientWidth * 0.8)}px, 0)`;
        this.element.children[0].style['MozTransform'] = `translate(-${(this.element.clientWidth * 0.8) * index - (this.element.clientWidth - this.element.clientWidth * 0.8)}px, 0)`;
        this.element.children[0].style['WebkitTransform'] = `translate(-${(this.element.clientWidth * 0.8) * index - (this.element.clientWidth - this.element.clientWidth * 0.8)}px, 0)`;
      } else {
        this.element.children[0].style['transform'] = `translate(-${(this.element.clientWidth * 0.8) * index}px, 0)`;
        this.element.children[0].style['msTransform'] = `translate(-${(this.element.clientWidth * 0.8) * index}px, 0)`;
        this.element.children[0].style['MozTransform'] = `translate(-${(this.element.clientWidth * 0.8) * index}px, 0)`;
        this.element.children[0].style['WebkitTransform'] = `translate(-${(this.element.clientWidth * 0.8) * index}px, 0)`;
      }
    } else if (this.CarouselMotion === 'fade') { // Motion default && fade
      for (let j = 0; j < this.element.children[0].children.length; j++) {
        if (this.element.children[0].children[index] === this.element.children[0].children[j]) {
          this.element.children[0].children[index].style.opacity = '1';
          this.element.children[0].children[index].style.visibility = 'visible';
          if(j!= 0 && j!= 1 && j == (this.element.children[0].children.length)-1){
          	$('#f_img').attr('src','/resources/images/res_4.jpg');
          }
        } else {
          this.element.children[0].children[j].style.opacity = '0';
          this.element.children[0].children[j].style.visibility = 'hidden';
        }
      };
    } else { // Motion default && slide
      this.element.children[0].style['transform'] = `translate(-${this.element.clientWidth * index}px, 0)`;
      this.element.children[0].style['msTransform'] = `translate(-${this.element.clientWidth * index}px, 0)`;
      this.element.children[0].style['MozTransform'] = `translate(-${this.element.clientWidth * index}px, 0)`;
      this.element.children[0].style['WebkitTransform'] = `translate(-${this.element.clientWidth * index}px, 0)`;
    }

    if (this.naviStyle === 'button' || !this.naviStyle) {
      for (let j = 0; j < this.element.children[1].children.length; j++) { // navi-wrapper
																			// >
																			// spans
																			// navi-on
																			// remove
        this.element.children[1].children[j].setAttribute('class', '');
        if(index != 1 && index != 0 && j == (this.element.children[1].children.length)-1){
        	$('#f_img').attr('src','/resources/images/res_4.jpg');
        }
        
        
        
        // 눌렀을때
      }
      this.element.children[1].children[index].setAttribute('class', 'navi-on'); // navi-wrapper
																					// >
																					// span
																					// navi-on
																					// add
    }
  }

  _optionSetting() {
    setTimeout(() => {
      // CarouselMotion slide || prev || fade => css transition register
      if (this.CarouselMotion === 'slide' || this.CarouselMotion === 'prev') this.element.children[0].style.transition = '0.4s all'

      if (this.CarouselMotion === 'prev') { // CarouselMotion prev setting
        this.element.children[0].style.width = `${(this.element.clientWidth * 0.8) * this.element.children[0].children.length}px`;
        for (let i = 0; i < this.element.children[0].children.length; i++) this.element.children[0].children[i].style.width = `${this.element.clientWidth * 0.8}px`;
      } else if (this.CarouselMotion === 'fade') { // CarouselMotion fade
													// setting
        this.element.children[0].style.width = `${this.element.clientWidth}px`;
        this.element.children[0].style.height = `${this.element.children[0].children[0].clientHeight}px`;
        for (let i = 0; i < this.element.children[0].children.length; i++) {
        	this.element.children[0].children[i].setAttribute('class', 'carousel-item carousel-fade');
        	
        	 
        }
        
        
       
      } else { // CarouselMotion slide || default setting

      }
      if (this.naviStyle === 'button' || !this.naviStyle) {
        if (this.naviPosition === 'top') { // naviPosition Setting
          this.element.children[1].style.top = '10px';
        } else if (this.naviPosition === 'left' || this.naviPosition === 'right') {
          this.naviPosition === 'right' ? this.element.children[1].style.left = '570px' : this.element.children[1].style.right = '570px';
          this.element.children[1].style.width = '15px';
          this.element.children[1].style.top = '50%';
          this.element.children[1].style.marginTop = `-${this.element.children[1].clientHeight / 2}px`;
        } else {
          this.element.children[1].style.bottom = '10px';
        }
      }
    }, 0);
  }  
}