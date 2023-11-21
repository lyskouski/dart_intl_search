// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'basic.dart';

const chineseToPinyin = {
  "的": "de",
  "一": "yī",
  "是": "shì",
  "不": "bù",
  "了": "le",
  "在": "zài",
  "人": "rén",
  "我": "wǒ",
  "有": "yǒu",
  "他": "tā",
  "中": "zhōng",
  "国": "guó",
  "大": "dà",
  "小": "xiǎo",
  "好": "hǎo",
  "学": "xué",
  "生": "shēng",
  "工": "gōng",
  "作": "zuò",
  "业": "yè",
  "会": "huì",
  "计": "jì",
  "算": "suàn",
  "机": "jī",
  "本": "běn",
  "础": "chǔ",
  "科": "kē",
  "技": "jì",
  "术": "shù",
  "电": "diàn",
  "子": "zǐ",
  "脑": "nǎo",
  "软": "ruǎn",
  "件": "jiàn",
  "方": "fāng",
  "法": "fǎ",
  "言": "yán",
  "语": "yǔ",
  "文": "wén",
  "字": "zì",
  "句": "jù",
  "段": "duàn",
  "落": "luò",
  "们": "men",
  "爱": "ài",
  "和": "hé",
  "春": "chūn",
  "夏": "xià",
  "秋": "qiū",
  "冬": "dōng",
  "父": "fù",
  "母": "mǔ",
  "兄": "xiōng",
  "弟": "dì",
  "姐": "jiě",
  "妹": "mèi",
  "叔": "shū",
  "舅": "jiù",
  "狗": "gǒu",
  "猫": "māo",
  "鱼": "yú",
  "鸟": "niǎo",
  "龙": "lóng",
  "梨": "lí",
  "虫": "chóng",
  "美": "měi",
  "乐": "lè",
  "智": "zhì",
  "创": "chuàng",
  "新": "xīn",
  "快": "kuài",
  "平": "píng",
  "绿": "lǜ",
  "未": "wèi",
  "全": "quán",
  "社": "shè",
  "可": "kě",
  "道": "dào",
  "德": "dé",
  "仁": "rén",
  "民": "mín",
  "共": "gòng",
  "自": "zì",
  "由": "yóu",
  "世": "shì",
  "界": "jiè",
  "谐": "xié",
  "享": "xiǎng",
  "早": "zǎo",
  "晚": "wǎn",
  "上": "shàng",
  "下": "xià",
  "左": "zuǒ",
  "右": "yòu",
  "前": "qián",
  "后": "hòu",
  "天": "tiān",
  "地": "dì",
  "火": "huǒ",
  "水": "shuǐ",
  "风": "fēng",
  "山": "shān",
  "石": "shí",
  "木": "mù",
  "金": "jīn",
  "土": "tǔ",
  "花": "huā",
  "草": "cǎo",
  "星": "xīng",
  "月": "yuè",
  "欧": "Ōu",
  "巴": "bā",
  "哥": "gē",
  "日": "rì",
  "年": "nián",
  "义": "yì",
  "慧": "huì",
  "勇": "yǒng",
  "刚": "gāng",
  "毅": "yì",
  "真": "zhēn",
  "善": "shàn",
  "奇": "qí",
  "特": "tè",
  "丽": "lì",
  "聪": "cōng",
  "明": "míng",
  "俊": "jùn",
  "雄": "xióng",
  "雅": "yǎ",
  "婷": "tíng",
  "翔": "xiáng",
  "琪": "qí",
  "峰": "fēng",
  "杰": "jié",
  "伟": "wěi",
  "梦": "mèng",
  "阳": "yáng",
  "艾": "ài",
  "妮": "nī",
  "川": "chuān",
  "流": "liú",
  "力": "lì",
  "宇": "yǔ",
  "宙": "zhòu",
  "苍": "cāng",
  "穹": "qióng",
  "吹": "chuī",
  "林": "lín",
  "田": "tián",
  "野": "yě",
  "焰": "yàn",
  "湖": "hú",
  "海": "hǎi",
  "辰": "chén",
  "宿": "xiù",
  "雨": "yǔ",
  "露": "lù",
  "雪": "xuě",
  "霜": "shuāng",
  "物": "wù",
  "行": "xíng",
  "云": "yún",
  "虎": "hǔ",
  "飞": "fēi",
  "雀": "què",
  "翼": "yì",
  "兽": "shòu",
  "鲸": "jīng",
  "象": "xiàng",
  "狮": "shī",
  "猿": "yuán",
  "熊": "xióng",
  "豹": "bào",
  "狼": "láng",
  "蚁": "yǐ",
  "蝶": "dié",
  "蜻": "qīng",
  "蛇": "shé",
  "马": "mǎ",
  "牛": "niú",
  "猴": "hóu",
  "猛": "měng",
  "狂": "kuáng",
  "犀": "xī",
  "猎": "liè",
  "獾": "huān",
  "狸": "lí",
  "狷": "juàn",
  "獭": "tǎ",
  "狱": "yù",
  "松": "sōng",
  "竹": "zhú",
  "梅": "méi",
  "兰": "lán",
  "菊": "jú",
  "柳": "liǔ",
  "桃": "táo",
  "橙": "chéng",
  "柿": "shì",
  "榴": "liú",
  "橘": "jú",
  "葡": "pú",
  "葆": "bǎo",
  "荔": "lì",
  "蕉": "jiāo",
  "藤": "téng",
  "蔓": "màn",
  "菠": "bō",
  "苹": "píng",
  "葵": "kuí",
  "椒": "jiāo",
  "辣": "là",
  "香": "xiāng",
  "椰": "yē",
  "葱": "cōng",
  "姜": "jiāng",
  "蒜": "suàn",
  "韭": "jiǔ",
  "薑": "jiāng",
  "蘑": "mó",
  "蘋": "píng",
  "藍": "lán",
  "著": "zhù",
  "風": "fēng",
  "雷": "léi",
  "電": "diàn",
  "冰": "bīng",
  "烈": "liè",
  "煙": "yān",
  "熱": "rè",
  "燃": "rán",
  "暖": "nuǎn",
  "朝": "zhāo",
  "晨": "chén",
  "昏": "hūn",
  "曉": "xiǎo",
  "夜": "yè",
  "雲": "yún",
  "霧": "wù",
  "霞": "xiá",
  "彩": "cǎi",
  "虹": "hóng",
  "夢": "mèng",
  "想": "xiǎng",
  "幻": "huàn",
  "青": "qīng",
  "紫": "zǐ",
  "黑": "hēi",
  "白": "bái",
  "紅": "hóng",
  "往": "wǎng",
  "来": "lái",
  "去": "qù",
  "回": "huí",
  "止": "zhǐ",
  "立": "lì",
  "坐": "zuò",
  "卧": "wò",
  "奔": "bēn",
  "跑": "pǎo",
  "走": "zǒu",
  "驶": "shǐ",
  "游": "yóu",
  "泳": "yǒng",
  "爬": "pá",
  "攀": "pān",
  "升": "shēng",
  "降": "jiàng",
  "起": "qǐ",
  "进": "jìn",
  "退": "tuì",
  "入": "rù",
  "出": "chū",
  "开": "kāi",
  "关": "guān",
  "始": "shǐ",
  "终": "zhōng",
  "死": "sǐ",
  "慢": "màn",
  "急": "jí",
  "厂": "chǎng",
  "河": "hé",
  "果": "guǒ",
  "蔬": "shū",
  "树": "shù",
  "芽": "yá",
  "茶": "chá",
  "植": "zhí",
  "种": "zhǒng",
  "银": "yín",
  "铜": "tóng",
  "铁": "tiě",
  "纸": "zhǐ",
  "丝": "sī",
  "布": "bù",
  "绸": "chóu",
  "绢": "juàn",
  "织": "zhī",
  "绣": "xiù",
  "线": "xiàn",
  "针": "zhēn",
  "孔": "kǒng",
  "洞": "dòng",
  "庙": "miào",
  "口": "kǒu",
  "目": "mù",
  "耳": "ěr",
  "手": "shǒu",
  "足": "zú",
  "心": "xīn",
  "肝": "gān",
  "脾": "pí",
  "肺": "fèi",
  "胃": "wèi",
  "肾": "shèn",
  "头": "tóu",
  "眼": "yǎn",
  "鼻": "bí",
  "舌": "shé",
  "牙": "yá",
  "脖": "bó",
  "胸": "xiōng",
  "续": "xù",
  "背": "bèi",
  "肚": "dù",
  "腿": "tuǐ",
  "臂": "bì",
  "掌": "zhǎng",
  "脚": "jiǎo",
  "指": "zhǐ",
  "甲": "jiǎ",
  "乙": "yǐ",
  "丙": "bǐng",
  "丁": "dīng",
  "戊": "wù",
  "己": "jǐ",
  "庚": "gēng",
  "太": "tài",
  "阴": "yīn",
  "晓": "xiǎo",
  "辛": "xīn",
  "壬": "rén",
  "癸": "guǐ",
};

String zhCN(String value) {
  for (var e in chineseToPinyin.entries) {
    value = value.replaceAll(e.key, e.value);
  }
  return basic(value);
}
