//
//  ViewController.swift
//  YunBaDemo
//
//  Created by 王宇 on 15/10/27.
//  Copyright © 2015年 emwcn. All rights reserved.
//

import UIKit

let viewCount = 6

class ViewController: UIViewController {

    @IBOutlet weak var demoScrollView: UIScrollView!
    
    @IBOutlet weak var messageScrollView: UIScrollView!
    
    // pub/sub view
    
    @IBOutlet weak var subscribedSwitch: UISwitch!
    @IBOutlet weak var subTopicText: UITextField!
    @IBOutlet weak var pubButton: UIButton!
    @IBOutlet weak var pubContentText: UITextField!
    @IBOutlet weak var pubTopicText: UITextField!
    @IBOutlet weak var pubQosSegment: UISegmentedControl!
    
    // alias view
    
    @IBOutlet weak var aliasSetButton: UIButton!
    @IBOutlet weak var aliasGetButton: UIButton!
    @IBOutlet weak var aliasSetText: UITextField!
    @IBOutlet weak var aliasGetText: UITextField!
    
    // presence view
    
    @IBOutlet weak var presenceSubSwitch: UISwitch!
    @IBOutlet weak var presenceSubText: UITextField!
    @IBOutlet weak var aliasPubButton: UIButton!
    @IBOutlet weak var aliasPubContentText: UITextField!
    @IBOutlet weak var aliasPubText: UITextField!
    @IBOutlet weak var aliasPubQosSegment: UISegmentedControl!
    
    // get topic list /get alias list /get state view
    
    @IBOutlet weak var getTopicListButton: UIButton!
    @IBOutlet weak var getTopicListText: UITextField!
    @IBOutlet weak var getStateButton: UIButton!
    @IBOutlet weak var getStateText: UITextField!
    @IBOutlet weak var getAliasListButton: UIButton!
    @IBOutlet weak var getAliasListText: UITextField!
    
    // pub2 view

    @IBOutlet weak var pub2Button: UIButton!
    @IBOutlet weak var pub2TypeSegment: UISegmentedControl!
    @IBOutlet weak var pub2TopicText: UITextField!
    @IBOutlet weak var pub2ContentText: UITextField!
    @IBOutlet weak var pub2AlertText: UITextField!
    @IBOutlet weak var pub2BadgeText: UITextField!
    @IBOutlet weak var pub2SoundSegment: UISegmentedControl!
    @IBOutlet weak var pub2Key1Text: UITextField!
    @IBOutlet weak var pub2Value1Text: UITextField!

    //v2 get topic list /get alias list /get state view
    @IBOutlet weak var getTopicListV2Button: UIButton!
    @IBOutlet weak var getTopicListV2Text: UITextField!
    @IBOutlet weak var getStateV2Button: UIButton!
    @IBOutlet weak var getStateV2Text: UITextField!
    @IBOutlet weak var getAliasListV2Button: UIButton!
    @IBOutlet weak var getAliasListV2Text: UITextField!

    @IBAction func onSwitchPub(sender: AnyObject) {
        
    }
    @IBAction func onSubTopicChanged(sender: AnyObject) {
        
    }
    @IBAction func onSubTopicFinshed(sender: AnyObject) {
        
    }
    @IBAction func onPubButton(sender: AnyObject) {
        
    }
    @IBAction func onPubTopicFinshed(sender: AnyObject) {
        
    }
    @IBAction func onPubContentFinshed(sender: AnyObject) {
        
    }
    @IBAction func onAliasSetButton(sender: AnyObject) {
        
    }
    @IBAction func onAliasSetFinshed(sender: AnyObject) {
        
    }
    @IBAction func onAliasGetButton(sender: AnyObject) {
        
    }
    @IBAction func onPresenceSubSwitch(sender: AnyObject) {
        
    }
    @IBAction func onPresenceSubAliasChanged(sender: AnyObject) {
    
    }
    @IBAction func onPresenceSubFinshed(sender: AnyObject) {
    
    }
    @IBAction func onAliasPubButton(sender: AnyObject) {
    
    }
    @IBAction func onAliasPubTopicFinshed(sender: AnyObject) {
    
    }
    @IBAction func onAliasPubContentFinshed(sender: AnyObject) {
    
    }
    @IBAction func onTopicListGetButton(sender: AnyObject) {
    
    }
    @IBAction func onTopicListGetFinshed(sender: AnyObject) {
    
    }
    @IBAction func onStateGetButton(sender: AnyObject) {
    
    }
    @IBAction func onStateGetFinshed(sender: AnyObject) {
    
    }
    @IBAction func onAliasListGetButton(sender: AnyObject) {
    
    }
    @IBAction func onAliasListGetFinshed(sender: AnyObject) {
    
    }
    @IBAction func onPub2Button(sender: AnyObject) {
    
    }
    @IBAction func onPub2TopicFinshed(sender: AnyObject) {
    
    }
    @IBAction func onPub2ContentFinshed(sender: AnyObject) {
    
    }
    @IBAction func onPub2AlertFinshed(sender: AnyObject) {
    
    }
    @IBAction func onPub2BadgeFinshed(sender: AnyObject) {
    
    }
    @IBAction func onPub2Key1Finshed(sender: AnyObject) {
    
    }
    @IBAction func onPub2Value1Finshed(sender: AnyObject) {
    
    }
    @IBAction func onTopicListV2GetButton(sender: AnyObject) {
    
    }
    @IBAction func onTopicListV2GetFinshed(sender: AnyObject) {
    
    }
    @IBAction func onStateV2GetButton(sender: AnyObject) {
    
    }
    @IBAction func onStateV2GetFinshed(sender: AnyObject) {
    
    }
    @IBAction func onAliasListV2GetButton(sender: AnyObject) {
    
    }
    @IBAction func onAliasListV2GetFinshed(sender: AnyObject) {
    
    }

    
    @IBOutlet var pubSubView: UIView!
    
    @IBOutlet var aliasView: UIView!
    
    @IBOutlet var presenceView: UIView!
    
    @IBOutlet var getsView: UIView!
    
    @IBOutlet var pub2View: UIView!
    
    @IBOutlet var getsV2View: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let views = NSBundle.mainBundle().loadNibNamed("DemoSV", owner: self, options: nil) as! [UIView!]
        
        for sub in views {
            switch sub.tag {
            case 0:
                pubSubView = sub
            case 1:
                aliasView = sub
            case 2:
                presenceView = sub
            case 3:
                getsView = sub
            case 4:
                pub2View = sub
            case 5:
                getsV2View = sub
            default:
                print("oh")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        print("viewWillAppear")
        print(demoScrollView.frame)
    }

    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
        print(demoScrollView.frame)
    }
    
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
        print(demoScrollView.frame)
    }
    
    override func viewDidAppear(animated: Bool) {
        print("viewDidAppear")
        print(pubSubView.frame)
        let width = demoScrollView.frame.width
        let height = demoScrollView.frame.height
        let views = [pubSubView, aliasView, presenceView, getsView, pub2View, getsV2View]
        for i in 0...5 {
            views[i].frame = CGRectMake(CGFloat(i) * width, 0, width, height)
            demoScrollView.addSubview(views[i])
        }
        demoScrollView.contentSize = CGSizeMake(CGFloat(6) * width, height)

    }
}

