                    
							<form  method="post" action="login.php" autocomplete="on"> 
                                <h3>Log in</h3> 
								<hr>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your username </label>
                                    <input id="username" name="username" required="required" type="text"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password"/> 
                                </p>
								<p> 
                                   <label for="category" class="youcat" data-icon="">Your Category </label>
									<select id="category"  name="category" required="required">
									<center>
										<option></option>
										<option>Developer</option>
										<option>Investor</option>
										<option>Admin</option>
									</center>
									</select>
                                </p>
                                <p class="login button"> 
                                    <input type="submit" name="login" value="Login" /> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </form>