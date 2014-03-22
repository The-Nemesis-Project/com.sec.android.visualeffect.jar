.class Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;
.super Landroid/os/Handler;
.source "WaterColorRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DVFSHandlerForWaterColor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V
    .registers 2

    .prologue
    .line 782
    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 787
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 797
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 798
    return-void

    .line 790
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # invokes: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->aquireCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$300(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V

    goto :goto_5

    .line 794
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # invokes: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->releaseCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$400(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V

    goto :goto_5

    .line 787
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method
