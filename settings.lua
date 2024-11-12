data:extend{
	--modules-speed
	{
        name = 't4-modules-speed-item-effect-consumption',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'a[speed]-a[consumption]',
        default_value = 0.8,
        minimum_value = 0.7,
        maximum_value = 10
    },
	{
        name = 't5-modules-speed-item-effect-consumption',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'a[speed]-a[consumption]',
        default_value = 1,
        minimum_value = 0.7,
        maximum_value = 10
    },
	{
        name = 't4-modules-speed-item-effect-speed',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'a[speed]-b[speed]',
        default_value = 0.8,
        minimum_value = 0.5,
        maximum_value = 10
     },
	 {
        name = 't5-modules-speed-item-effect-speed',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'a[speed]-b[speed]',
        default_value = 1,
        minimum_value = 0.5,
        maximum_value = 10
    },
	{
        name = 't4-modules-speed-item-effect-quality',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'a[speed]-c[quality]',
        default_value = -0.30,
        minimum_value = -10,
        maximum_value = 10
    },
	{
        name = 't5-modules-speed-item-effect-quality',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'a[speed]-c[quality]',
        default_value = -0.35,
        minimum_value = -10,
        maximum_value = 10
    },
	
--modules-efficiency
	{
        name = 't4-modules-efficiency-item-effect-consumption',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[efficiency]-a[consumption]',
        default_value = -0.6,
        minimum_value = -10,
        maximum_value = -0.5
     },
	 {
        name = 't5-modules-efficiency-item-effect-consumption',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[efficiency]-a[consumption]',
        default_value = -0.7,
        minimum_value = -10,
        maximum_value = -0.5
    },

	--modules-productivity
	{
        name = 't4-modules-productivity-item-effect-consumption',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-a[consumption]',
        default_value = 1.0,
        minimum_value = 0.8,
        maximum_value = 10
    },
	{
        name = 't5-modules-productivity-item-effect-consumption',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-a[consumption]',
        default_value = 1.2,
        minimum_value = 0.8,
        maximum_value = 10
    },
	{
        name = 't4-modules-productivity-item-effect-speed',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-b[speed]',
        default_value = -0.2,
        minimum_value = -10,
        maximum_value = -0.15
    },
	{
        name = 't5-modules-productivity-item-effect-speed',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-b[speed]',
        default_value = -0.25,
        minimum_value = -10,
        maximum_value = -0.15
    },
	{
        name = 't4-modules-productivity-item-effect-productivity',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-c[productivity]',
        default_value = 0.15,
        minimum_value = 0.1,
        maximum_value = 10
    }, {
        name = 't5-modules-productivity-item-effect-productivity',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-c[productivity]',
        default_value = 0.20,
        minimum_value = 0.1,
        maximum_value = 10
    },
	{
        name = 't4-modules-productivity-item-effect-pollution',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-d[pollution]',
        default_value = 0.15,
        minimum_value = 0.1,
        maximum_value = 10
    },
	{
        name = 't5-modules-productivity-item-effect-pollution',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-d[pollution]',
        default_value = 0.20,
        minimum_value = 0.1,
        maximum_value = 10
    },
	
	--quality module
	{
        name = 't4-modules-quality-item-effect-quality',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'd[quality]-d[quality-module-4]',
        default_value = 0.30,
        minimum_value = 0.25,
        maximum_value = 10
       },
	{
        name = 't5-modules-quality-item-effect-quality',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'd[quality]-d[quality-module-5]',
        default_value = 0.35,
        minimum_value = 0.25,
        maximum_value = 10
    },
	{
        name = 't4-modules-quality-item-effect-speed',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'd[quality]-d[quality-module-4]',
        default_value = -0.05,
        minimum_value = -0.05,
        maximum_value = 10
       },
	{
        name = 't5-modules-quality-item-effect-speed',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'd[quality]-d[quality-module-5]',
        default_value = -0.05,
        minimum_value = -0.05,
        maximum_value = 10
    },

}