//
//  LLTestCopyViewController.m
//  LLDemo
//
//  Created by galileio on 2016/12/21.
//  Copyright © 2016年 ctw. All rights reserved.
//

#import "LLTestCopyViewController.h"
#import "LLPerson.h"
@interface LLTestCopyViewController ()

@end

@implementation LLTestCopyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    LLPerson * person = [LLPerson new];
    NSString * name = @"galileio";
    person.nameStrong = name;
    person.nameCopy = name;
      NSLog(@"origin : %p,strong : %p,copy : %p", name, person.nameStrong, person.nameCopy);
    
    
    LLPerson * person1 = [LLPerson new];
    NSMutableString * mName = [NSMutableString stringWithFormat:@"galileio"];
    person1.nameStrong = mName;
    person1.nameCopy = mName;
   
    NSLog(@"origin : %p,strong : %p,copy : %p", mName, person1.nameStrong, person1.nameCopy);
    NSLog(@"%@--%@--%@",mName,person1.nameCopy,person1.nameStrong);
    mName.string = @"lilei";
    NSLog(@"%@--%@--%@",mName,person1.nameCopy,person1.nameStrong);
    NSLog(@"origin : %p,strong : %p,copy : %p", mName, person1.nameStrong, person1.nameCopy);
    //从上面的例子中可以看出来，当属性为strong的时候，它的值在上面这种情况下会被改掉。
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
