.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
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
    .line 1682
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get35(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get35(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBackgroundColor(I)V

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap9(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleRecentApps()V

    .line 1683
    return-void
.end method
