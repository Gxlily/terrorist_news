package cn.edu.tju.bigdata.controller.app.service.object;

import cn.edu.tju.bigdata.controller.com.gf.crawl.*;
import cn.edu.tju.bigdata.controller.com.lxy.crawl.CC;
import cn.edu.tju.bigdata.entity.*;
import cn.edu.tju.bigdata.mapper.*;
import cn.edu.tju.bigdata.enums.EmDeletedMark;
import cn.edu.tju.bigdata.controller.index.BaseController;
import cn.edu.tju.bigdata.plugin.PageView;
import cn.edu.tju.bigdata.util.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

/**
 * Created by Administrator on 2016/12/12.
 */
@Controller
@RequestMapping("/crawler")
public class CrawlerController extends BaseController {
    @Autowired
    Pub_TmzgMapper  pub_tmzgmapper;
    @Autowired
    BBCMapper bbcmapper;
    @Autowired
    BoxunMapper boxunmapper;
    @Autowired
    CnnMapper cnnmapper;
    @Autowired
    IsraelMapper israelmapper;
    @Autowired
    JihadologyMapper jihadologymapper;
    @Autowired
    MirrorMapper mirrormapper;
    @Autowired
    MizzmiaMapper mizzmiamapper;
    @Autowired
    ReutersMapper reutersmapper;
    @Autowired
    RfaMapper rfamapper;
    @Autowired
    SiteMapper sitemapper;
    @Autowired
    SwhMapper swhmapper;
    @Autowired
    SyrianewsMapper syrianewsmapper;
    @Autowired
    UhrpMapper uhrpmapper;
    @Autowired
    HeavyMapper heavymapper;
    @Autowired
    LatimesMapper latimesmapper;




    @RequestMapping("/application")
    public String manage(Model model) throws Exception {
         Connection conn = null;
         Statement stmt = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/xmaster?user=root&password=123";
            conn = DriverManager.getConnection(url);
            stmt = conn.createStatement();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Common.BACKGROUND_PATH + "/app/crawler/terrorist_crawler";
    }
    @ResponseBody
    @RequestMapping("/pub_event_tmzg")
    public String pub_event_crawler() throws Exception {
        Runtime rt = Runtime.getRuntime();
        Process pr = rt.exec("cmd.exe /c start python C:\\Users\\Administrator\\Desktop\\pub_events.py");
        return "success";
    }
    @ResponseBody
    @RequestMapping("/bbc")
    public String bbc() throws Exception {
        CC c = new Crawl_bbc();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/boxun")
    public String boxun() throws Exception {
        CC c = new Crawl_boxun();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/cnn")
    public String cnn() throws Exception {
        CC c = new Crawl_cnn();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/israel")
    public String israel() throws Exception {
        CC c = new Crawl_israel();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/jihadology")
    public String jihadology() throws Exception {
        CC c = new Crawl_jihadology();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/mirror")
    public String mirror() throws Exception {
        CC c = new Crawl_mirror();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/mizzmia")
    public String mizzmia() throws Exception {
        CC c = new Crawl_mizzmia();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/reuters")
    public String reuters() throws Exception {
        CC c = new Crawl_reuters();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/rfa")
    public String rfa() throws Exception {
        CC c = new Crawl_rfa();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/site")
    public String site() throws Exception {
        CC c = new Crawl_site();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/swh")
    public String swh() throws Exception {
        CC c = new Crawl_swh();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/syrianews")
    public String syrianews() throws Exception {
        CC c = new Crawl_syrianews();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/uhrp")
    public String uhrp() throws Exception {
        CC c = new Crawl_uhrp();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/heavy")
    public String heavy() throws Exception {
        CC c = new Crawl_heavy();
        c.run();
        return "success";
    }
    @ResponseBody
    @RequestMapping("/latimes")
    public String litimes() throws Exception {
        CC c = new Crawl_latimes();
        c.run();
        return "success";
    }

    @ResponseBody
    @RequestMapping("/findByPage")
    public PageView findByPage(String pageNow, String pageSize) throws Exception {
        Pub_Event_Tmzg_FormMap pubFormMap=getFormMap(Pub_Event_Tmzg_FormMap.class);
        pubFormMap = toFormMap(pubFormMap, pageNow, pageSize, pubFormMap.getStr("orderby"));
        pubFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(pub_tmzgmapper.findByPage(pubFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage1")
    public PageView findByPage1(String pageNow, String pageSize) throws Exception {
        BBCFormMap bbcFormMap =getFormMap(BBCFormMap.class);
        bbcFormMap = toFormMap(bbcFormMap, pageNow, pageSize, bbcFormMap.getStr("orderby"));
        bbcFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(bbcmapper.findByPage(bbcFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage2")
    public PageView findByPage2(String pageNow, String pageSize) throws Exception {
        BoxunFormMap boxunFormMap =getFormMap(BoxunFormMap.class);
        boxunFormMap = toFormMap(boxunFormMap, pageNow, pageSize, boxunFormMap.getStr("orderby"));
        boxunFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(boxunmapper.findByPage(boxunFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage3")
    public PageView findByPage3(String pageNow, String pageSize) throws Exception {
        CnnFormMap cnnFormMap =getFormMap(CnnFormMap.class);
        cnnFormMap = toFormMap(cnnFormMap, pageNow, pageSize, cnnFormMap.getStr("orderby"));
        cnnFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(cnnmapper.findByPage(cnnFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage4")
    public PageView findByPage4(String pageNow, String pageSize) throws Exception {
        IsraelFormMap israelFormMap =getFormMap(IsraelFormMap.class);
        israelFormMap = toFormMap(israelFormMap, pageNow, pageSize, israelFormMap.getStr("orderby"));
        israelFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(israelmapper.findByPage(israelFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage5")
    public PageView findByPage5(String pageNow, String pageSize) throws Exception {
        JihadologyFormMap jihadologyFormMap =getFormMap(JihadologyFormMap.class);
        jihadologyFormMap = toFormMap(jihadologyFormMap, pageNow, pageSize, jihadologyFormMap.getStr("orderby"));
        jihadologyFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(jihadologymapper.findByPage(jihadologyFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage6")
    public PageView findByPage6(String pageNow, String pageSize) throws Exception {
        MirrorFormMap mirrorFormMap =getFormMap(MirrorFormMap.class);
        mirrorFormMap = toFormMap(mirrorFormMap, pageNow, pageSize, mirrorFormMap.getStr("orderby"));
        mirrorFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(mirrormapper.findByPage(mirrorFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage7")
    public PageView findByPage7(String pageNow, String pageSize) throws Exception {
        MizzmiaFormMap mizzmiaFormMap =getFormMap(MizzmiaFormMap.class);
        mizzmiaFormMap = toFormMap(mizzmiaFormMap, pageNow, pageSize, mizzmiaFormMap.getStr("orderby"));
        mizzmiaFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(mizzmiamapper.findByPage(mizzmiaFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage8")
    public PageView findByPage8(String pageNow, String pageSize) throws Exception {
        ReutersFormMap reutersFormMap =getFormMap(ReutersFormMap.class);
        reutersFormMap= toFormMap(reutersFormMap, pageNow, pageSize, reutersFormMap.getStr("orderby"));
        reutersFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(reutersmapper.findByPage(reutersFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage9")
    public PageView findByPage9(String pageNow, String pageSize) throws Exception {
        RfaFormMap rfaFormMap =getFormMap(RfaFormMap.class);
        rfaFormMap= toFormMap(rfaFormMap, pageNow, pageSize, rfaFormMap.getStr("orderby"));
        rfaFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(rfamapper.findByPage(rfaFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage10")
    public PageView findByPage10(String pageNow, String pageSize) throws Exception {
        SiteFormMap siteFormMap =getFormMap(SiteFormMap.class);
        siteFormMap= toFormMap(siteFormMap, pageNow, pageSize, siteFormMap.getStr("orderby"));
        siteFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(sitemapper.findByPage(siteFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage11")
    public PageView findByPage11(String pageNow, String pageSize) throws Exception {
        SwhFormMap swhFormMap =getFormMap(SwhFormMap.class);
        swhFormMap= toFormMap(swhFormMap, pageNow, pageSize, swhFormMap.getStr("orderby"));
        swhFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(swhmapper.findByPage(swhFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage12")
    public PageView findByPage12(String pageNow, String pageSize) throws Exception {
        SyrianewsFormMap syrianewsFormMap =getFormMap(SyrianewsFormMap.class);
        syrianewsFormMap= toFormMap(syrianewsFormMap, pageNow, pageSize, syrianewsFormMap.getStr("orderby"));
        syrianewsFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(syrianewsmapper.findByPage(syrianewsFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage13")
    public PageView findByPage13(String pageNow, String pageSize) throws Exception {
        UhrpFormMap uhrpFormMap =getFormMap(UhrpFormMap.class);
        uhrpFormMap= toFormMap(uhrpFormMap, pageNow, pageSize, uhrpFormMap.getStr("orderby"));
        uhrpFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(uhrpmapper.findByPage(uhrpFormMap));
        return pageView;
    }

    @ResponseBody
    @RequestMapping("/findByPage14")
    public PageView findByPage14(String pageNow, String pageSize) throws Exception {
        HeavyFormMap heavyFormMap =getFormMap(HeavyFormMap.class);
        heavyFormMap= toFormMap(heavyFormMap, pageNow, pageSize, heavyFormMap.getStr("orderby"));
        heavyFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(heavymapper.findByPage(heavyFormMap));
        return pageView;
    }
    @ResponseBody
    @RequestMapping("/findByPage15")
    public PageView findByPage15(String pageNow, String pageSize) throws Exception {
        LatimesFormMap latimesFormMap =getFormMap(LatimesFormMap.class);
        latimesFormMap= toFormMap(latimesFormMap, pageNow, pageSize, latimesFormMap.getStr("orderby"));
        latimesFormMap.set("deleted_mark", EmDeletedMark.VALID.getCode());
        pageView.setRecords(latimesmapper.findByPage(latimesFormMap));
        return pageView;
    }

    public void closeConnection(Connection  conn){
        if(conn!=null){
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println("关闭数据库时发生异常！");
            }
        }
    }


}
