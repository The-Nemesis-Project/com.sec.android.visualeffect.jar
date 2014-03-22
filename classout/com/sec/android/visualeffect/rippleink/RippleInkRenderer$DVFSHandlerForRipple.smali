.class Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;
.super Landroid/os/Handler;
.source "RippleInkRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DVFSHandlerForRipple"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V
    .registers 2

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1367
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 1377
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1378
    return-void

    .line 1370
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # invokes: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->aquireCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$1200(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    goto :goto_5

    .line 1374
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # invokes: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->releaseCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$1300(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    goto :goto_5

    .line 1367
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method
