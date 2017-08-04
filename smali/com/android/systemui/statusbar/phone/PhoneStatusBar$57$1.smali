.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;

    .prologue
    .line 4965
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap25(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4967
    return-void
.end method
