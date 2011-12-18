package com.kaltura.vo
{
	import com.kaltura.vo.KalturaCuePointFilter;

	[Bindable]
	public dynamic class KalturaAnnotationBaseFilter extends KalturaCuePointFilter
	{
		/** 
		* 		* */ 
		public var parentIdEqual : String;

		/** 
		* 		* */ 
		public var parentIdIn : String;

		/** 
		* 		* */ 
		public var endTimeGreaterThanOrEqual : int = int.MIN_VALUE;

		/** 
		* 		* */ 
		public var endTimeLessThanOrEqual : int = int.MIN_VALUE;

		/** 
		* 		* */ 
		public var durationGreaterThanOrEqual : int = int.MIN_VALUE;

		/** 
		* 		* */ 
		public var durationLessThanOrEqual : int = int.MIN_VALUE;

		override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('parentIdEqual');
			arr.push('parentIdIn');
			arr.push('endTimeGreaterThanOrEqual');
			arr.push('endTimeLessThanOrEqual');
			arr.push('durationGreaterThanOrEqual');
			arr.push('durationLessThanOrEqual');
			return arr;
		}

		override public function getInsertableParamKeys():Array
		{
			var arr : Array;
			arr = super.getInsertableParamKeys();
			return arr;
		}

	}
}