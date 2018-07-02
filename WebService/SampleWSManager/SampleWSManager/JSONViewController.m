#import "JSONViewController.h"

@interface JSONViewController ()

@end

@implementation JSONViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSString* fileContent = @"{\"images\": [\"straight up kick.png\",\"women kick.png\",\"Taekwondo Kanji vertical.png\",\"face kick3.png\",\"flexibility.png\",\"Punch.png\",\"hook kick.png\",\"front kick 2.png\"]}";
    [self writeStringtoFile:fileContent];
    id readContent = [self readStringFromFile];
    NSLog(@"Written content from json file %@", [readContent objectForKey:@"images"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)writeStringtoFile:(NSString *)aString {
    // Build the path, and create if needed.
    NSString* filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString* fileName = @"bookmark.json";
    NSString* fileAtPath = [filePath stringByAppendingPathComponent:fileName];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:fileAtPath]) {
        [[NSFileManager defaultManager] createFileAtPath:fileAtPath contents:nil attributes:nil];
    }
    
    [[aString dataUsingEncoding:NSUTF8StringEncoding] writeToFile:fileAtPath atomically:NO];
}

-(id)readStringFromFile {
    // Build the path...
    NSString* filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSLog(@"file Path %@",filePath);
    NSString* fileName = @"bookmark.json";
    NSString* fileAtPath = [filePath stringByAppendingPathComponent:fileName];
    
    NSString *jsonString = [[NSString alloc] initWithData:[NSData dataWithContentsOfFile:fileAtPath] encoding:NSUTF8StringEncoding];
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    // The main act...
    return json;
}

@end
