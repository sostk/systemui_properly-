.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;->onPowerSaveModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap32(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1424
    return-void
.end method
