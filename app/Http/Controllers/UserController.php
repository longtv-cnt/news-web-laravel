<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use phpDocumentor\Reflection\DocBlock\Tags\Uses;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.user.list', [
            'users' => User::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.user.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password_confirmation' => 'required|min:6|same:password',
        ], [
            'name.required' => 'Bạn chưa nhập tên',
            'name.max' => 'Tên không được vượt quá 255 ký tự',
            'email.required' => 'Bạn chưa nhập email',
            'email.email' => 'Email không đúng định dạng',
            'email.max' => 'Email không được vượt quá 255 ký tự',
            'email.unique' => 'Email đã tồn tại',
            'password_confirmation.required' => 'Bạn chưa nhập mật khẩu',
            'password_confirmation.min' => 'Mật khẩu phải có ít nhất 6 ký tự',
            'password_confirmation.same' => 'Mật khẩu không trùng khớp',
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->role = $request->role;
        $user->password = bcrypt($request->password);
        if ($request->hasFile('avatar')) {
            $file = $request->file('avatar');
            $fileName = $file->getClientOriginalName();
            $destinationPath = public_path('/store');
            $file->move($destinationPath, $fileName);

            $user->avatar = $fileName;
            //
        }
        $user->save();
        return redirect()->route('admin.users.index');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $user = User::find($id);

        return view('admin.user.edit', [
            'user' => $user
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->role = $request->role;
        if ($request->hasFile('avatar')) {
            $file = $request->file('avatar');
            $fileName = $file->getClientOriginalName();
            $destinationPath = public_path('/store');
            $file->move($destinationPath, $fileName);
            if ($user->avatar) {
                $oldFile = $destinationPath . '/' . $user->avatar;
                if (file_exists($oldFile)) {
                    unlink($oldFile);
                }
            }

            $user->avatar = $fileName;
            //

        }
        if ($request->has('changepwd')) {
            $this->validate($request, [
                'password_confirmation' => 'required|min:6|same:password',
            ], [
                'password_confirmation.required' => 'Bạn chưa nhập lại mật khẩu',
                'password_confirmation.min' => 'Mật khẩu phải có ít nhất 6 ký tự',
                'password_confirmation.same' => 'Mật khẩu không trùng khớp',
            ]);

            $user->password = bcrypt($request->password);
        }
        $user->save();
        return redirect()->route('admin.users.index');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $user = User::find($id);
        //check anh trong thu muc
        if ($user->avatar) {
            $oldFile = public_path('/store/' . $user->avatar);
            if (file_exists($oldFile)) {
                unlink($oldFile);
            }

            //dd($id);
            $user->delete();
        }

        return redirect()->route('admin.users.index');
    }
    public function showFormLogin()
    {
        return view('admin.login.login');
    }
    public function login(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required|min:3|max:32',
        ]);
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            return redirect()->route('admin.categories.index');
        }
        return redirect()->back()->withInput()->withErrors([
            'email' => 'Email or password invalid',
        ]);
    }
    public function logout()
    {
        Auth::logout();
        return redirect()->route('show-form-login');
    }
    public function showClientUser()
    {
        return view('client.user');
    }
    public function updateClientUser(Request $request)
    {
        // update user with image profile email and password
        $id = Auth::user()->id;
        $user = User::find($id);
        $user->name = $request->name;
        $user->email = $request->email;
        if ($request->hasFile('avatar')) {
            $file = $request->file('avatar');
            $fileName = $file->getClientOriginalName();
            $destinationPath = public_path('/store');
            $file->move($destinationPath, $fileName);
            if ($user->avatar) {
                $oldFile = $destinationPath . '/' . $user->avatar;
                if (file_exists($oldFile)) {
                    unlink($oldFile);
                }
            }

            $user->avatar = $fileName;
            //



        }

        // check password
        if ($request->password) {
            $this->validate($request, [
                'password_confirmation' => 'required|min:3|same:password',
            ], [
                'password_confirmation.required' => 'Bạn chưa nhập lại mật khẩu',
                'password_confirmation.min' => 'Mật khẩu phải có ít nhất 3 ký tự',
                'password_confirmation.same' => 'Mật khẩu không trùng khớp',
            ]);
            $user->password = bcrypt($request->password);
        }
        $user->save();
        return redirect()->back()->with('success', 'Cập nhật thành công');
        // if select image profile, update image profile or not

    }
}
