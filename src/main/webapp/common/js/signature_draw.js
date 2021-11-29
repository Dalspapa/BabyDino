var _SIGNATURE = new function(){
	
	let baseSign = "data:image/png;base64,iVORm0KGgoAAAANSUhEUgAAAMgAAADICAMAAACahl6sAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAADBQTFRFqqqq0dHRa2tr3d3d0PT0JiYm6enpuLi4QkJCWFhYfX19xcXFnJycj";
	
	this.start = function (_canvas, _width, _height){
		let isDrawing = false;
		let x = 0;
		let y = 0;
		
		const drawCanvas = document.getElementById(_canvas);
		const context = drawCanvas.getContext('2d');
		
		drawCanvas.width = _width;
		drawCanvas.style.width = _width + "px";
		drawCanvas.height = _height;
		drawCanvas.style.height = _height + "px";
		
		drawCanvas.addEventListener('mousedown', e => {
			x = e.offsetX;
			y = e.offsetY;
			isDrawing = true;
		})
		
		drawCanvas.addEventListener('mousemove', e => {
			if (isDrawing === true) {
				this.drawLine(context, x, y, e.offsetX, e.offsetY);
				x = e.offsetX;
				y = e.offsetY;
			}
		})
		
		drawCanvas.addEventListener('mouseup', e => {
			if (isDrawing === true) {
				this.drawLine(context, x, y, e.offsetX, e.offsetY);
				x = 0;
				y = 0;
				isDrawing = false;
			}
		})
		
		drawCanvas.addEventListener('touchstart', e => {
			isDrawing = true;
			context.beginPath();
			context.moveTo(getPosition(e).X, getPosition(e).Y);
			x = getPosition(e).X;
			y = getPosition(e).Y;
		})
		
		drawCanvas.addEventListener('touchmove', e => {
			if (isDrawing === true) {
				e.preventDefault();
				this.drawLine(context, x, y, getPosition(e).X, getPosition(e).Y);
				x = getPosition(e).X;
				y = getPosition(e).Y;
			}
		})
				
		drawCanvas.addEventListener('touchend', e => {
			context.closePath();
			x = 0;
			y = 0;
			isDrawing = false;
		})
		
		function getPosition(e){
			var drawCanvasPos = drawCanvas.getBoundingClientRect();
			return {
				X: e.changedTouches[0].pageX - drawCanvas.offsetLeft - drawCanvasPos.left,
				Y: e.changedTouches[0].pageY - drawCanvas.offsetTop - drawCanvasPos.top
			}
		}
	}
	
	this.drawLine = function(context, x1, y1, x2, y2){
		context.beginPath();
		context.strokeStyle = 'black';
		context.lineWidth = 1;
		context.moveTo(x1, y1);
		context.lineTo(x2, y2);
		context.stroke();
		context.closePath();
	}
	
	this.getCanvas = function(_canvas) {
		const drawCanvas = document.getElementById(_canvas);
		var data = drawCanvas.toDataURL("image/png");
		return data;
	}
	
	this.clearCanvas = function(_canvas){
		const drawCanvas = document.getElementById(_canvas);
		drawCanvas.getContext("2d").clearRect(0, 0, drawCanvas.width, drawCanvas.height);
	}
	
	this.drawCanvas = function(_canvas){
		var link = document.createElement('a');
		link.href = this.getCanvas(_canvas);
		link.download = _canvas + "-" + new Date().getTime() + ".png";
		document.body.appendChild(link);
		link.click();
		document.body.removeChild(link);
	}
	
	this.doneCanvas = function(_canvas){
		const drawCanvas = document.getElementById(_cansvas);
		var data = this.getCanvas(_canvas);
		
		this.clearCanvas(_canvas);
		var blankImage = this.getCanvas(_canvas);
		
		if (data != blankImage){
			drawCanvas.parentNode.previousElementSibling.style.backgroundImage = "url('" + data +"')";
		} else {
			drawCanvas.parentNode.previousElementSibling.style.backgroundImage = "url('" + baseSign +"')";
		}
		drawCanvas.parentElement.style.display = "none";
	}
	

	
}















