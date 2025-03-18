
var projectName = '图书馆借阅管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.jsp'
}
]


var indexNav = [

{
	name: '图书馆信息',
	url: './pages/tushuguanxinxi/list.jsp'
}, 
{
	name: '图书信息',
	url: './pages/tushuxinxi/list.jsp'
}, 

{
	name: '公告信息',
	url: './pages/news/list.jsp'
},
{
	name: '留言反馈',
	url: './pages/messages/list.jsp'
}
]

var adminurl =  "http://localhost:8080/jspmx1x74/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"图书馆信息","menuJump":"列表","tableName":"tushuguanxinxi"}],"menu":"图书馆信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"图书类型","menuJump":"列表","tableName":"tushuleixing"}],"menu":"图书类型管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"图书信息","menuJump":"列表","tableName":"tushuxinxi"}],"menu":"图书信息管理"},{"child":[{"buttons":["查看","修改","删除","审核","导出"],"menu":"图书借阅","menuJump":"列表","tableName":"tushujieyue"}],"menu":"图书借阅管理"},{"child":[{"buttons":["查看","审核","修改","删除"],"menu":"图书续借","menuJump":"列表","tableName":"tushuxujie"}],"menu":"图书续借管理"},{"child":[{"buttons":["查看","修改","删除","审核","罚金"],"menu":"图书归还","menuJump":"列表","tableName":"tushuguihai"}],"menu":"图书归还管理"},{"child":[{"buttons":["查看","修改","删除","导出"],"menu":"缴纳罚金","menuJump":"列表","tableName":"jiaonafajin"}],"menu":"缴纳罚金管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"liuyanbanguanli"}],"menu":"留言板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"lunbotuguanli"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"图书馆信息列表","menuJump":"列表","tableName":"tushuguanxinxi"}],"menu":"图书馆信息模块"},{"child":[{"buttons":["查看","借阅"],"menu":"图书信息列表","menuJump":"列表","tableName":"tushuxinxi"}],"menu":"图书信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","修改","删除","续借","归还"],"menu":"图书借阅","menuJump":"列表","tableName":"tushujieyue"}],"menu":"图书借阅管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"图书续借","menuJump":"列表","tableName":"tushuxujie"}],"menu":"图书续借管理"},{"child":[{"buttons":["查看","删除"],"menu":"图书归还","menuJump":"列表","tableName":"tushuguihai"}],"menu":"图书归还管理"},{"child":[{"buttons":["查看","支付"],"menu":"缴纳罚金","menuJump":"列表","tableName":"jiaonafajin"}],"menu":"缴纳罚金管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"图书馆信息列表","menuJump":"列表","tableName":"tushuguanxinxi"}],"menu":"图书馆信息模块"},{"child":[{"buttons":["查看","借阅"],"menu":"图书信息列表","menuJump":"列表","tableName":"tushuxinxi"}],"menu":"图书信息模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
