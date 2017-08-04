.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lmeizu/space/MSpaceController$OnChangeListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public omPackageModeChange(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "privacy"    # Z

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 1346
    return-void
.end method

.method public onPrivacyModeChange(Lmeizu/space/MSpaceController$MSpaceMode;Lmeizu/space/MSpaceController$MSpaceState;)V
    .locals 1
    .param p1, "mode"    # Lmeizu/space/MSpaceController$MSpaceMode;
    .param p2, "state"    # Lmeizu/space/MSpaceController$MSpaceState;

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 1341
    return-void
.end method
