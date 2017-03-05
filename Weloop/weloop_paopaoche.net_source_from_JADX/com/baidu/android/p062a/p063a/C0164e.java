package com.baidu.android.p062a.p063a;

import android.util.Log;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Iterator;

/* renamed from: com.baidu.android.a.a.e */
public class C0164e {
    private boolean f2869a;
    private int f2870b;
    private C0163d f2871c;
    private Selector f2872d;
    private ServerSocketChannel f2873e;

    public C0164e(C0163d c0163d) {
        this.f2869a = false;
        this.f2871c = c0163d;
    }

    private void m4169c() {
        ByteBuffer allocate = ByteBuffer.allocate(200);
        do {
            this.f2872d.select();
            Iterator it = this.f2872d.selectedKeys().iterator();
            while (it.hasNext()) {
                SelectionKey selectionKey = (SelectionKey) it.next();
                it.remove();
                try {
                    SocketChannel accept;
                    C0162c c0162c;
                    if (selectionKey.isAcceptable()) {
                        accept = ((ServerSocketChannel) selectionKey.channel()).accept();
                        accept.configureBlocking(false);
                        SelectionKey register = accept.register(this.f2872d, 5);
                        c0162c = new C0162c();
                        register.attach(c0162c);
                        this.f2871c.m4163a(c0162c);
                    }
                    if (selectionKey.isReadable()) {
                        accept = (SocketChannel) selectionKey.channel();
                        c0162c = (C0162c) selectionKey.attachment();
                        if (c0162c.m4160e() || c0162c.m4161f()) {
                            c0162c.m4159d();
                            accept.close();
                        } else {
                            int read;
                            allocate.clear();
                            int i = 0;
                            while (true) {
                                read = accept.read(allocate);
                                if (read <= 0) {
                                    break;
                                }
                                accept.read(allocate);
                                allocate.flip();
                                c0162c.m4152a(allocate);
                                i += read;
                                allocate.clear();
                            }
                            if (read == -1) {
                                c0162c.m4159d();
                                accept.close();
                            } else if (i != 0) {
                                c0162c.m4162g();
                                if (i != 0 && c0162c.m4157b()) {
                                    if (!c0162c.m4160e()) {
                                        try {
                                            this.f2871c.m4165b(c0162c);
                                        } catch (Exception e) {
                                            this.f2871c.m4164a(c0162c, e);
                                        }
                                    }
                                    selectionKey.interestOps(4);
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    if (selectionKey.isWritable()) {
                        accept = (SocketChannel) selectionKey.channel();
                        c0162c = (C0162c) selectionKey.attachment();
                        if (c0162c.m4160e() || c0162c.m4161f()) {
                            c0162c.m4159d();
                            accept.close();
                        } else {
                            allocate.clear();
                            allocate.rewind();
                            if (c0162c.m4156b(allocate) > 0) {
                                c0162c.m4162g();
                                allocate.flip();
                                accept.write(allocate);
                                if (c0162c.m4158c()) {
                                    c0162c.m4159d();
                                    accept.close();
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                } catch (Exception e2) {
                    selectionKey.cancel();
                    try {
                        selectionKey.channel().close();
                    } catch (Exception e3) {
                    }
                }
                if (!this.f2869a) {
                    break;
                }
            }
        } while (this.f2869a);
    }

    private void m4170d() {
        try {
            if (this.f2872d != null) {
                this.f2872d.close();
                this.f2872d = null;
            }
            if (this.f2873e != null) {
                this.f2873e.close();
                this.f2873e = null;
            }
            if (this.f2869a) {
                this.f2869a = false;
                m4172a(this.f2870b);
            }
        } catch (Exception e) {
        }
    }

    public void m4171a() {
        this.f2869a = false;
        m4170d();
    }

    public boolean m4172a(int i) {
        this.f2870b = i;
        if (this.f2869a) {
            return true;
        }
        try {
            this.f2873e = ServerSocketChannel.open();
            ServerSocket socket = this.f2873e.socket();
            SocketAddress inetSocketAddress = new InetSocketAddress(this.f2870b);
            socket.setReuseAddress(true);
            socket.bind(inetSocketAddress);
            this.f2873e.configureBlocking(false);
            this.f2872d = Selector.open();
            this.f2873e.register(this.f2872d, 16);
            try {
                new Thread(new C0165f(this)).start();
                this.f2869a = true;
                return true;
            } catch (Exception e) {
                Log.e("nebular HttpServer", "error: " + e.getMessage());
                this.f2869a = false;
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public boolean m4173b() {
        return this.f2869a;
    }
}
